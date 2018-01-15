Unit BASinMidi;

interface

Uses Windows, MMSystem, Sound, FastCore, Utility;

Procedure StartMIDI;
Procedure StopMIDI;
Procedure MIDIGatherBits(Value: DWord);
Procedure MIDIOut(Value: DWord);

Var
  MIDIByte: DWord;
  MIDIBuffer: Array[0..1023] of Byte;
  MIDIBufferLen: Integer;
  MIDIHandle: HMIDIOut;

implementation

Procedure StartMIDI;
Begin

  If SoundAvailable Then Begin

     StopMIDI;

     If Opt_MIDIDevice <> -2 Then

        If MidiOutOpen(@MIDIHandle, Opt_MIDIDevice, 0, 0, CALLBACK_NULL) <> MMSYSERR_NOERROR then
           MIDIHandle := 0;

  End;

End;

Procedure StopMIDI;
Begin

  If MIDIHandle <> 0 Then
     MidiOutClose(MIDIHandle);

  MIDIHandle := 0;

End;

Procedure MIDIGatherBits(Value: DWord);
Begin

  MidiByte := (MidiByte shr 1) or ((((Not Value) shr 2) And 1) Shl 8);

  If (MidiByte And 1) <> 0 Then Begin

     MidiOut(((Not MidiByte) Shr 1) And 255);
     MidiByte := 0;

  End;

End;

Procedure MIDIOut(Value: DWord);
Var
  MIDIError: Integer;
Begin

  If ((Value And 128) = 128) And (MidiBufferLen  <> 0) Then

     // Bit 7 set means a new command is starting

     MidiBufferLen := 0

  Else If ((Value And 128) = 0) And (MidiBufferLen = 0) Then

     If (MidiBuffer[0] And 128) = 128 Then
        MidiBufferLen := 1
     Else
        Exit;

  MidiBuffer[MidiBufferLen] := Value;
  Inc(MidiBufferLen);

  If ((((MidiBuffer[0] And $FD) = $F1) Or ((MidiBuffer[0] And $E0) = $C0)) And (MidiBufferLen < 2)) Then
     Exit;

  If (MidiBuffer[0] <> $F0) And (MidiBufferLen < 3) Then
     Exit;

  If (MidiBuffer[0] = $F0) And (Value <> $F7) Then
     Exit;

  If (MidiBuffer[0] = $F0) And (Value = $F7) Then Begin

     MidiBufferLen := 0;
     Exit;

  End;

  If MIDIHandle <> 0 Then Begin
     MIDIError := MidiOutShortMsg(MIDIHandle, GetDWord(@MidiBuffer[0]));
     If MIDIError <> 0 Then
        MIDIHandle := 0;
  End;


  PutDWord(@MidiBuffer[0], 0);

End;

end.
