unit VectEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FastIMG, ExtCtrls, FastDIB, StdCtrls, Buttons;

type

  TAnchor = Record X, Y: Extended; ImageX, ImageY, Flags: Integer; Data: Pointer; End;
  TMouseMode = (mmMove, mmMoving, mmNewAnchor, mmSelect);

  TVectEditForm = class(TForm)
    Panel1: TPanel;
    FastIMG1: TFastIMG;
    Timer1: TTimer;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FastIMG1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FastIMG1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FastIMG1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Anchors: Array of TAnchor;
    SelectedList: TStringlist;
    SelX, SelY, SelW, SelH: Extended;
    Disp_OffX, Disp_OffY, Disp_Zoom: Extended;
    MouseMode: TMouseMode;
    MouseX, MouseY, MouseOver: Integer;
    MouseDown, MouseMoved, AnchorMayUnSelect: Boolean;
    AntOffset: Integer;
    Procedure RenderWorkspace;
    Procedure MoveAnchors(Index: Integer; Dx, Dy: Extended);
    Procedure SelectAnchor(Idx: Integer);
    Procedure UnSelectAnchor(Idx: Integer);
    Procedure ClearSelectedAnchors;
  end;

var
  VectEditForm: TVectEditForm;

implementation

{$R *.DFM}

Uses FastCore, PaintBox;

{
  The vector editor.

  This form allows the user to create simple vector graphics - made of lines and fill points.
  Lines are created by selecting two anchor points, and joining them. A third (or fourth)
  anchor point can describe a curve. Circles can be created, as well as rectangles.

  Circles are a special case, as they are built of arcs. Arcs take three anchor points -
  the first two describe the radius, and the third describes the distance travelled along the
  arc in degrees.

  This is all achieved by the user creating anchor points and manipulating them. The resulting
  shapes will be quite simple, but more than enough to create most vector shapes.
}


{ To Do:

*  1.    Select single anchors
*  2.    Select multiple anchors
*  3.    Select anchors via selectionbox
*  4.    Toggle selections
*  5.    Move anchors
  6.    Add anchors
  7.    Delete anchors
  8.    Pan around
  9.    Zoom in and out
  10.   Attach lines to 2 (or more anchors)
  11.   Display numbers above selected anchors to show selection order (important for showing where lines/curves will go)
  12.   Attach curves to 3 or 4 anchors
  13.

}
procedure TVectEditForm.FormCreate(Sender: TObject);
begin

  SelectedList := TStringlist.Create;

end;

procedure TVectEditForm.FormDestroy(Sender: TObject);
begin

  SelectedList.Free;

end;

Procedure TVectEditForm.RenderWorkspace;
Var
  OffX, OffY, Wid, Hgt, Zoom, An_X, An_Y: Extended;
  Idx, Int_X, Int_Y, DistX, DistY, MouseDist, X, Y, sWid, sHgt: Integer;
  Clr, Clr2: TFColorA;
Begin

  FastIMG1.Bmp.SetSize(FastIMG1.Width, FastIMG1.Height, 32);
  FastIMG1.Bmp.Clear(TFSpecWhite);

  // Figure out, from the current zoom and the current image size,
  // what the visible region is.

  Zoom := 1/Disp_Zoom;
  Wid := FastIMG1.Bmp.Width;
  Hgt := FastIMG1.Bmp.AbsHeight;
  OffX := (Disp_OffX * Zoom) - (Wid/2);
  OffY := (Disp_OffY * Zoom) - (Hgt/2);

  // Render the Anchors that fall within the visible region

  MouseOver := -1;
  MouseDist := 10000;

  If Length(Anchors) > 0 Then Begin

     For Idx := 0 To Length(Anchors) -1 Do Begin

        // Convert the anchor's x/y coords to match the current zoom

        An_X := Anchors[Idx].X;
        An_Y := -Anchors[Idx].Y;
        Int_X := Round((An_X * Zoom) - OffX);
        Int_Y := Round((An_Y * Zoom) - OffY);
        DistX := Abs(Int_X - MouseX);
        DistY := Abs(Int_Y - MouseY);
        If (DistX < 3) and (DistY < 3) Then
           If (DistX * DistX) + (DistY * DistY) < MouseDist Then Begin
              MouseDist := (DistX * DistX) + (DistY * DistY);
              MouseOver := Idx;
           End;

        If Anchors[Idx].Flags And 1 = 0 Then
           Clr := DisplayPalette[0]
        Else
           Clr := DisplayPalette[14];

        If (Int_X >= 0) and (Int_X < FastIMG1.Bmp.Width -1) and (Int_Y >= 0) and (Int_Y < FastIMG1.Bmp.AbsHeight -1) Then Begin

           FastIMG1.Bmp.Pixels32[Int_Y, Int_X] := Clr;
           FastIMG1.Bmp.Pixels32[Int_Y, Int_X +1] := Clr;
           FastIMG1.Bmp.Pixels32[Int_Y +1, Int_X] := Clr;
           FastIMG1.Bmp.Pixels32[Int_Y +1, Int_X +1] := Clr;

        End;

        Anchors[Idx].ImageX := Int_X;
        Anchors[Idx].ImageY := Int_Y;

     End;

     If MouseOver >= 0 Then Begin

        Int_X := Anchors[MouseOver].ImageX;
        Int_Y := Anchors[MouseOver].ImageY;

        If (Int_X >= 0) and (Int_X < FastIMG1.Bmp.Width -1) and (Int_Y >= 0) and (Int_Y < FastIMG1.Bmp.AbsHeight -1) Then
           FastIMG1.Cursor := crHandPoint
        Else
           FastIMG1.Cursor := crDefault;

     End Else
        FastIMG1.Cursor := crDefault;

  End;

  // Selection rectangle?

  If MouseMode = mmSelect Then Begin

     Clr := DisplayPalette[0];
     Clr2 := DisplayPalette[15];

     Int_X := Round(SelX * Zoom);
     Int_Y := Round(SelY * Zoom);
     sWid := Round(SelW * Zoom);
     sHgt := Round(SelH * Zoom);

     If sWid < 0 Then Begin
        Inc(Int_X, sWid);
        sWid := -sWid;
     End;

     If sHgt < 0 Then Begin
        Inc(Int_Y, sHgt);
        sHgt := -sHgt;
     End;

     For X := Int_X to Int_X + sWid Do Begin

        If (X > 0) And (X < FastIMG1.Bmp.Width) Then Begin
           If (Int_Y > 0) And (Int_Y < FastIMG1.Bmp.AbsHeight) Then
              If AntsArray[(X+AntOffset) mod 8, Int_Y mod 8] = 1 Then
                 FastIMG1.Bmp.Pixels32[Int_Y, X] := Clr
              Else
                 FastIMG1.Bmp.Pixels32[Int_Y, X] := Clr2;
           If (Int_Y+sHgt > 0) And (Int_Y+sHgt < FastIMG1.Bmp.AbsHeight) Then
              If AntsArray[(X+AntOffset) mod 8, (Int_Y+sHgt) mod 8] = 1 Then
                 FastIMG1.Bmp.Pixels32[Int_Y+sHgt, X] := Clr
              Else
                 FastIMG1.Bmp.Pixels32[Int_Y+sHgt, X] := Clr2;
        End;

     End;

     For Y := Int_Y To Int_Y + sHgt Do Begin

        If (Y > 0) And (Y < FastIMG1.Bmp.AbsHeight) Then Begin
           If (Int_X > 0) And (Int_X < FastIMG1.Bmp.Width) Then
              If AntsArray[(Int_X + AntOffset) mod 8, Y Mod 8] = 1 Then
                 FastIMG1.Bmp.Pixels32[Y, Int_X] := Clr
              Else
                 FastIMG1.Bmp.Pixels32[Y, Int_X] := Clr2;
           If (Int_X + sWid >0) And (Int_X + sWid < FastIMG1.Bmp.Width) Then
              If AntsArray[(Int_X + sWid + AntOffset) mod 8, Y Mod 8] = 1 Then
                 FastIMG1.Bmp.Pixels32[Y, Int_X + sWid] := Clr
              Else
                 FastIMG1.Bmp.Pixels32[Y, Int_X + sWid] := Clr2;
        End;

     End;

  End;

  FastIMG1.Repaint;

End;

Procedure TvectEditForm.MoveAnchors(Index: Integer; Dx, Dy: Extended);
Begin

  If Index = -1 Then Begin

     For Index := 0 To Length(Anchors) -1 Do
        MoveAnchors(Index, Dx, Dy);

  End Else
     If Index < Length(Anchors) Then Begin

        Anchors[Index].X := Anchors[Index].X + Dx;
        Anchors[Index].Y := Anchors[Index].Y + Dy;

     End;

End;

procedure TVectEditForm.FormShow(Sender: TObject);
begin

  // Temp code

  Disp_OffX := 0;
  Disp_OffY := 0;
  Disp_Zoom := 0.25;

  MouseMode := mmMove;

  RenderWorkSpace;
  MouseDown := False;

end;

procedure TVectEditForm.FormResize(Sender: TObject);
begin

  FastIMG1.Bmp.SetSize(FastIMG1.Width, FastIMG1.Height, 32);
  RenderWorkspace;

end;

procedure TVectEditForm.FastIMG1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Var
  Idx, TX, TY, Idx2: Integer;
  Dx, Dy, Tlx, Tly, Brx, Bry, OffX, OffY: Extended;
  WordStr: String;
begin

  Tx := MouseX;
  Ty := MouseY;
  MouseX := X;
  MouseY := FastIMG1.Bmp.AbsHeight - Y;
  OffX := -((FastIMG1.Bmp.Width/2) * Disp_Zoom);
  OffY := -((FastIMG1.Bmp.AbsHeight/2) * Disp_Zoom);

  Case MouseMode of

     mmMove:
        Begin

           If MouseDown Then Begin
              If MouseOver >= 0 Then Begin
                 Dx := (MouseX - Tx) * (Disp_Zoom);
                 Dy := -(MouseY - Ty) * (Disp_Zoom);
                 For Idx := 0 To Length(Anchors) -1 Do
                    If Anchors[Idx].Flags And 1 = 1 Then
                       MoveAnchors(Idx, Dx, Dy);
                 If (Dx <> 0) Or (Dy <> 0) Then MouseMoved := True;
              End;
           End;

        End;

     mmSelect:
        Begin

           SelW := (MouseX * Disp_Zoom) - SelX;
           SelH := (MouseY * Disp_Zoom) - SelY;

           Tlx := SelX + OffX;
           Tly := -(SelY + OffY);
           Brx := SelX + OffX + SelW;
           BrY := -(SelY + OffY + SelH);
           If Tlx > Brx Then Begin Dx := Tlx; Tlx := Brx; Brx := Dx; End;
           If Tly > Bry Then Begin Dy := Tly; Tly := Bry; Bry := Dy; End;

           For Idx := 0 To Length(Anchors) -1 Do Begin
              If (Anchors[Idx].X >= Tlx) and (Anchors[Idx].Y >= Tly) And
                 (Anchors[Idx].X <= Brx) and (Anchors[Idx].Y <= Bry) Then Begin
                 If Anchors[Idx].Flags And 2 = 0 Then
                    SelectAnchor(Idx)
                 Else
                    UnSelectAnchor(Idx);
              End Else
                 If Anchors[Idx].Flags And 2 = 0 Then
                    UnSelectAnchor(Idx)
                 Else
                    SelectAnchor(Idx);
           End;

        End;

  End;

  If (Tx <> MouseX) or (Ty <> MouseY) Then RenderWorkSpace;

end;

procedure TVectEditForm.FastIMG1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var
  Idx, Idx2: Integer;
  WordStr: String;
begin

  AnchorMayUnselect := False;

  Case MouseMode of
     mmMove:
        Begin
           If MouseOver >= 0 Then Begin

              If Anchors[MouseOver].Flags And 1 = 0 Then Begin
                 If Not (ssShift in Shift) Then ClearSelectedAnchors;
                 SelectAnchor(MouseOver);
                 RenderWorkSpace;
              End Else
                 AnchorMayUnSelect := True;

              MouseMoved := False;

           End Else Begin

              MouseMode := mmSelect;
              SelX := MouseX * Disp_Zoom;
              SelY := MouseY * Disp_Zoom;
              SelW := 0;
              SelH := 0;

              If Not (ssShift in Shift) Then ClearSelectedAnchors;
              For Idx := 0 To Length(Anchors) -1 Do
                 If Anchors[Idx].Flags And 1 = 0 Then
                    Anchors[Idx].Flags := Anchors[Idx].Flags And 253
                 Else
                    Anchors[Idx].Flags := Anchors[Idx].Flags Or 2;
              RenderWorkSpace;

           End;
        End;
  End;

  MouseDown := True;

end;

procedure TVectEditForm.FastIMG1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var
  Idx, Idx2: Integer;
  WordStr: String;
begin

  MouseDown := False;

  Case MouseMode of

     mmMove:
        Begin

           If AnchorMayUnselect Then
              If Not MouseMoved Then
                 If MouseOver >= 0 Then
                    UnSelectAnchor(MouseOver);

           MouseMoved := False;
           RenderWorkSpace;

        End;

     mmSelect:
        Begin

           MouseMode := mmMove;
           For Idx := 0 To Length(Anchors) -1 Do
              Anchors[Idx].Flags := Anchors[Idx].Flags And 253;
           RenderWorkSpace;

        End;

  End;

end;

Procedure TVectEditForm.ClearSelectedAnchors;
Var
  Idx: Integer;
Begin
  For Idx := 0 To Length(Anchors) -1 Do
     Anchors[Idx].Flags := Anchors[Idx].Flags And 254;
  SelectedList.Clear;
End;

Procedure TVectEditForm.SelectAnchor(Idx: Integer);
Var
  WordStr: String;
Begin
  WordStr := Chr(Idx And 255) + Chr(Idx Shr 8);
  If SelectedList.IndexOf(WordStr) = -1 Then SelectedList.Add(WordStr);
  If Anchors[Idx].Flags And 1 = 0 Then Anchors[Idx].Flags := Anchors[Idx].Flags Or 1;
End;

Procedure TVectEditForm.UnSelectAnchor(Idx: Integer);
Var
  Idx2: Integer;
  WordStr: String;
Begin
  WordStr := Chr(Idx And 255) + Chr(Idx Shr 8);
  Idx2 := SelectedList.IndexOf(WordStr);
  If Idx2 <> -1 Then SelectedList.Delete(Idx2);
  Anchors[Idx].Flags := Anchors[Idx].Flags And 254;
End;

procedure TVectEditForm.Timer1Timer(Sender: TObject);
begin

  AntOffset := (AntOffset + 1) Mod 8;
  If MouseMode = mmSelect Then RenderWorkSpace;

end;

end.
