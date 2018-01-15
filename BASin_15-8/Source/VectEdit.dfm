object VectEditForm: TVectEditForm
  Left = 230
  Top = 141
  Width = 415
  Height = 470
  Caption = 'Vector graphic editor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 12
    Top = 12
    Width = 23
    Height = 22
  end
  object SpeedButton2: TSpeedButton
    Left = 12
    Top = 36
    Width = 23
    Height = 22
  end
  object SpeedButton3: TSpeedButton
    Left = 12
    Top = 60
    Width = 23
    Height = 22
  end
  object SpeedButton4: TSpeedButton
    Left = 12
    Top = 84
    Width = 23
    Height = 22
  end
  object Panel1: TPanel
    Left = 44
    Top = 12
    Width = 341
    Height = 288
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    object FastIMG1: TFastIMG
      Left = 0
      Top = 0
      Width = 337
      Height = 284
      Transparent = False
      Picture = '(None)'
      AutoSize = False
      SizeMode = smGDI
      DrawStyle = dsDraw
      DIBLeft = 0
      DIBTop = 0
      Align = alClient
      OnMouseDown = FastIMG1MouseDown
      OnMouseMove = FastIMG1MouseMove
      OnMouseUp = FastIMG1MouseUp
    end
  end
  object Timer1: TTimer
    Interval = 80
    OnTimer = Timer1Timer
    Left = 50
    Top = 18
  end
end
