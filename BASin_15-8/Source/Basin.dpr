program BASin;

uses
  Forms,
  BasinMain in 'BasinMain.pas' {BASinOutput},
  Display in 'Display.pas'; {DisplayWindow}

{$R *.RES}
{$R WindowsXP.RES}
{$Z4}

begin
  Application.Initialize;
  Application.Title := 'BASin';
  Application.CreateForm(TBASinOutput, BASinOutput);
  Application.CreateForm(TDisplayWindow, DisplayWindow);
  Application.Run;
end.

