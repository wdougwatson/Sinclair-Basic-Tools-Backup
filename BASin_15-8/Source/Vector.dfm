object VectorForm: TVectorForm
  Left = 91
  Top = 152
  Width = 401
  Height = 382
  Caption = 'VectorForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox2: TScrollBox
    Left = 16
    Top = 16
    Width = 354
    Height = 278
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWindow
    ParentColor = False
    TabOrder = 0
    object FastIMG3: TFastIMG
      Left = 0
      Top = 0
      Width = 349
      Height = 273
      Transparent = False
      Picture = '(None)'
      AutoSize = False
      SizeMode = smGDI
      DrawStyle = dsDraw
      DIBLeft = 0
      DIBTop = 0
    end
  end
  object Button1: TButton
    Left = 16
    Top = 309
    Width = 57
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'New...'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 80
    Top = 309
    Width = 57
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Edit...'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 152
    Top = 309
    Width = 57
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Delete'
    TabOrder = 3
  end
  object Button4: TButton
    Left = 313
    Top = 309
    Width = 57
    Height = 21
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 249
    Top = 309
    Width = 57
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Okay'
    Default = True
    TabOrder = 5
  end
end
