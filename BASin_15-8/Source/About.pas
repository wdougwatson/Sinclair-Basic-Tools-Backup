unit About;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, FastIMG, FastDIB, TransparentPanel;

type
  TAboutBox = class(TForm)
    Button1: TButton;
    TransparentPanel1: TTransparentPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    FastIMG2: TFastIMG;
    FastIMG1: TFastIMG;
    FastIMG3: TFastIMG;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure BuildBackgroundImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.DFM}

Uses Utility;

procedure TAboutBox.FormCreate(Sender: TObject);
begin
  ClientWidth := FastIMG1.Width + (FastIMG1.Left *2);
  ClientHeight := FastIMG1.Height + (FastIMG1.Top * 2);
  Button1.SetBounds(ClientWidth - Button1.Width - 8, ClientHeight - Button1.Height - 8, Button1.Width, Button1.Height);
end;

procedure TAboutBox.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TAboutBox.FormShow(Sender: TObject);
begin
  Label1.Caption := ReleaseName;
  BuildBackgroundImage;
end;

Procedure TAboutBox.BuildBackgroundImage;
Var
  X, Y: Integer;
  Base_Red, Base_Green, Base_Blue, Modifier: Byte;
  Mod_Red, Mod_Green, Mod_Blue: Extended;
  NewCL: tfColor;
  BaseClr, ModClr: TColor;
Begin

  FastIMG3.Bmp.SetSize(FastIMG1.Bmp.Width, FastIMG1.Bmp.AbsHeight, 24);

  // Get min and max colour values based on clButtonHighlight and clButtonShadow

  BaseClr := clBtnFace;
  ModClr := ClBtnHighlight;

  Base_red := GetRValue(ColorToRGB(BaseClr));
  Base_green := GetGValue(ColorToRGB(BaseClr));
  Base_blue := GetBValue(ColorToRGB(BaseClr));

  Mod_red := (GetRValue(ColorToRGB(ModClr)) - Base_Red) / 256;
  Mod_green := (GetGValue(ColorToRGB(ModClr)) - Base_Green) / 256;
  Mod_blue := (GetBValue(ColorToRGB(ModClr)) - Base_Blue) / 256;

  // Now draw the bitmap

  For Y := 0 To FastIMG3.Bmp.AbsHeight -1 Do

     For X := 0 To FastIMG3.Bmp.Width -1 Do Begin

        Modifier := FastIMG1.Bmp.Pixels8[Y, X];
        NewCl := fRGB(Round(Base_red + (Modifier * Mod_red)), Round(Base_green + (Modifier * Mod_green)), Round(Base_Blue + (Modifier * Mod_blue)));
        FastIMG3.Bmp.Pixels24[Y, X] := NewCl;

     End;

  FastIMG3.Repaint;

End;


end.
