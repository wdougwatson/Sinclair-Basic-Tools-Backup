object TokenForm: TTokenForm
  Tag = 1
  Left = 66
  Top = 138
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Token Table'
  ClientHeight = 248
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDeactivate = FormActivate
  OnMouseDown = FormMouseDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 4
    Top = 4
    Width = 440
    Height = 213
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnChange = PageControl1Change
    OnMouseDown = FormMouseDown
    object TabSheet1: TTabSheet
      Caption = 'Alpha-Numerics / Graphics'
      OnMouseDown = FormMouseDown
      object Label1: TLabel
        Left = 8
        Top = 4
        Width = 136
        Height = 13
        Caption = 'Alphanumerics and Symbols:'
        Transparent = True
        OnMouseDown = FormMouseDown
      end
      object Label2: TLabel
        Left = 8
        Top = 92
        Width = 155
        Height = 13
        Caption = 'Preset "Chequerboard" Graphics'
        Transparent = True
        OnMouseDown = FormMouseDown
      end
      object Label3: TLabel
        Left = 8
        Top = 132
        Width = 143
        Height = 13
        Caption = 'User Defined Graphics (UDGs)'
        Transparent = True
        OnMouseDown = FormMouseDown
      end
      object FastIMG1: TFastIMG
        Left = 8
        Top = 20
        Width = 361
        Height = 61
        Transparent = False
        Picture = '(None)'
        AutoSize = False
        SizeMode = smGDI
        DrawStyle = dsDraw
        DIBLeft = 0
        DIBTop = 0
        OnMouseDown = FastIMG1MouseDown
        OnMouseMove = FastIMG1MouseMove
        OnExit = FastIMG1Exit
      end
      object FastIMG2: TFastIMG
        Left = 8
        Top = 108
        Width = 241
        Height = 16
        Transparent = False
        Picture = '(None)'
        AutoSize = False
        SizeMode = smGDI
        DrawStyle = dsDraw
        DIBLeft = 0
        DIBTop = 0
        OnMouseDown = FastIMG2MouseDown
        OnMouseMove = FastIMG2MouseMove
        OnExit = FastIMG2Exit
      end
      object FastIMG3: TFastIMG
        Left = 8
        Top = 148
        Width = 316
        Height = 16
        Transparent = False
        Picture = '(None)'
        AutoSize = False
        SizeMode = smGDI
        DrawStyle = dsDraw
        DIBLeft = 0
        DIBTop = 0
        OnMouseDown = FastIMG3MouseDown
        OnMouseMove = FastIMG3MouseMove
        OnExit = FastIMG3Exit
      end
      object FastIMG4: TFastIMG
        Left = 336
        Top = 132
        Width = 32
        Height = 32
        Transparent = False
        Picture = '(None)'
        AutoSize = False
        SizeMode = smGDI
        DrawStyle = dsDraw
        DIBLeft = 0
        DIBTop = 0
        Visible = False
        OnMouseDown = FastIMG4MouseDown
        OnMouseMove = FastIMG4MouseMove
      end
      object CheckBox1: TCheckBox
        Left = 296
        Top = 83
        Width = 77
        Height = 17
        Caption = 'Use CHARS'
        TabOrder = 4
        OnClick = CheckBox1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Control Codes'
      ImageIndex = 1
      object Label4: TLabel
        Left = 8
        Top = 4
        Width = 122
        Height = 13
        Caption = 'Attribute Control Tokens:'
        Transparent = True
        OnMouseDown = FormMouseDown
      end
      object Label5: TLabel
        Left = 8
        Top = 116
        Width = 79
        Height = 13
        Caption = 'Editing Controls:'
        Transparent = True
        OnMouseDown = FormMouseDown
      end
      object Label6: TLabel
        Left = 8
        Top = 56
        Width = 72
        Height = 13
        Caption = 'Colour Tokens:'
        Transparent = True
        OnMouseDown = FormMouseDown
      end
      object FastIMG6: TFastIMG
        Left = 8
        Top = 20
        Width = 337
        Height = 31
        Transparent = False
        Picture = '(None)'
        AutoSize = False
        SizeMode = smGDI
        DrawStyle = dsDraw
        DIBLeft = 0
        DIBTop = 0
        OnDblClick = FastIMG6DblClick
        OnMouseMove = FastIMG6MouseMove
        OnExit = FastIMG6Exit
      end
      object FastIMG5: TFastIMG
        Left = 8
        Top = 132
        Width = 297
        Height = 31
        Transparent = False
        Picture = '(None)'
        AutoSize = False
        SizeMode = smGDI
        DrawStyle = dsDraw
        DIBLeft = 0
        DIBTop = 0
        OnDblClick = FastIMG5DblClick
        OnMouseMove = FastIMG5MouseMove
        OnExit = FastIMG5Exit
      end
      object FastIMG7: TFastIMG
        Left = 8
        Top = 72
        Width = 377
        Height = 31
        Transparent = False
        Picture = '(None)'
        AutoSize = False
        SizeMode = smGDI
        DrawStyle = dsDraw
        DIBLeft = 0
        DIBTop = 0
        OnDblClick = FastIMG7DblClick
        OnMouseMove = FastIMG7MouseMove
        OnExit = FastIMG7Exit
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Keywords'
      ImageIndex = 2
      object Label7: TLabel
        Left = 8
        Top = 4
        Width = 51
        Height = 13
        Caption = 'Keywords:'
        Transparent = True
        OnMouseDown = FormMouseDown
      end
      object FastIMG8: TFastIMG
        Left = 8
        Top = 20
        Width = 409
        Height = 151
        Transparent = False
        Picture = '(None)'
        AutoSize = False
        SizeMode = smGDI
        DrawStyle = dsDraw
        DIBLeft = 0
        DIBTop = 0
        OnDblClick = FastIMG8DblClick
        OnMouseMove = FastIMG8MouseMove
        OnExit = FastIMG8Exit
      end
    end
  end
  object Button1: TButton
    Left = 395
    Top = 223
    Width = 49
    Height = 21
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
    OnMouseDown = FormMouseDown
  end
  object Label8: TStaticText
    Left = 8
    Top = 220
    Width = 325
    Height = 17
    AutoSize = False
    TabOrder = 2
  end
  object Button2: TButton
    Left = 351
    Top = 222
    Width = 41
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Help'
    TabOrder = 3
    OnClick = Button2Click
  end
end
