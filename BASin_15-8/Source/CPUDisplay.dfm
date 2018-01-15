object CPUWindow: TCPUWindow
  Left = 131
  Top = 116
  Width = 558
  Height = 368
  BorderIcons = [biSystemMenu]
  Caption = 'CPU Monitor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnMouseMove = FormMouseMove
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 139
    Top = 16
    Width = 129
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Disassembly of memory at:'
  end
  object Label1: TLabel
    Left = 412
    Top = 16
    Width = 54
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Registers'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Tag = 1
    Left = 396
    Top = 44
    Width = 13
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'PC'
    OnClick = Label3Click
    OnMouseMove = Label3MouseMove
  end
  object Label4: TLabel
    Tag = 2
    Left = 396
    Top = 72
    Width = 13
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'AF'
    OnClick = Label3Click
    OnMouseMove = Label3MouseMove
  end
  object Label5: TLabel
    Tag = 3
    Left = 396
    Top = 100
    Width = 13
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'BC'
    OnClick = Label3Click
    OnMouseMove = Label3MouseMove
  end
  object Label6: TLabel
    Tag = 4
    Left = 396
    Top = 128
    Width = 13
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'DE'
    OnClick = Label3Click
    OnMouseMove = Label3MouseMove
  end
  object Label7: TLabel
    Tag = 5
    Left = 396
    Top = 156
    Width = 12
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'HL'
    OnClick = Label3Click
    OnMouseMove = Label3MouseMove
  end
  object Label8: TLabel
    Tag = 6
    Left = 396
    Top = 184
    Width = 10
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'IX'
    OnClick = Label3Click
    OnMouseMove = Label3MouseMove
  end
  object Label9: TLabel
    Tag = 7
    Left = 396
    Top = 212
    Width = 10
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'IY'
    OnClick = Label3Click
    OnMouseMove = Label3MouseMove
  end
  object Label10: TLabel
    Tag = 8
    Left = 472
    Top = 44
    Width = 12
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'SP'
    OnClick = Label3Click
    OnMouseMove = Label3MouseMove
  end
  object Label11: TLabel
    Tag = 9
    Left = 472
    Top = 72
    Width = 15
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'AF'#39
    OnClick = Label3Click
    OnMouseMove = Label3MouseMove
  end
  object Label12: TLabel
    Tag = 10
    Left = 472
    Top = 100
    Width = 15
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'BC'#39
    OnClick = Label3Click
    OnMouseMove = Label3MouseMove
  end
  object Label13: TLabel
    Tag = 11
    Left = 472
    Top = 128
    Width = 15
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'DE'#39
    OnClick = Label3Click
    OnMouseMove = Label3MouseMove
  end
  object Label14: TLabel
    Tag = 12
    Left = 472
    Top = 156
    Width = 14
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'HL'#39
    OnClick = Label3Click
    OnMouseMove = Label3MouseMove
  end
  object Label15: TLabel
    Left = 472
    Top = 184
    Width = 11
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'IR'
  end
  object Label16: TLabel
    Left = 472
    Top = 212
    Width = 12
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'IM'
  end
  object Label17: TLabel
    Left = 416
    Top = 264
    Width = 6
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'S'
  end
  object Label18: TLabel
    Left = 432
    Top = 264
    Width = 6
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Z'
  end
  object Label19: TLabel
    Left = 448
    Top = 264
    Width = 6
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '5'
  end
  object Label20: TLabel
    Left = 464
    Top = 264
    Width = 7
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'H'
  end
  object Label21: TLabel
    Left = 480
    Top = 264
    Width = 6
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '3'
  end
  object Label22: TLabel
    Left = 496
    Top = 264
    Width = 6
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'V'
  end
  object Label23: TLabel
    Left = 512
    Top = 264
    Width = 7
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'N'
  end
  object Label24: TLabel
    Left = 528
    Top = 264
    Width = 7
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'C'
  end
  object Label25: TLabel
    Left = 412
    Top = 244
    Width = 80
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Flags Register'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label26: TLabel
    Left = 8
    Top = 16
    Width = 76
    Height = 13
    Caption = 'Memory View'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit16: TEdit
    Left = 48
    Top = 52
    Width = 121
    Height = 21
    TabOrder = 30
    Text = 'Edit16'
    OnKeyDown = FormKeyDown
  end
  object Panel1: TPanel
    Left = 8
    Top = 40
    Width = 377
    Height = 251
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 31
    object FastIMG1: TFastIMG
      Left = 0
      Top = 0
      Width = 356
      Height = 247
      Transparent = False
      Picture = '(None)'
      AutoSize = False
      SizeMode = smGDI
      DrawStyle = dsDraw
      DIBLeft = 0
      DIBTop = 0
      Align = alClient
      OnDblClick = FastIMG1DblClick
      OnMouseDown = FastIMG1MouseDown
      OnMouseMove = FastIMG1MouseMove
    end
    object ScrollBar1: TScrollBar
      Left = 356
      Top = 0
      Width = 17
      Height = 247
      Align = alRight
      Kind = sbVertical
      Max = 65535
      PageSize = 0
      TabOrder = 1
      OnScroll = ScrollBar1Scroll
    end
  end
  object Edit1: TEdit
    Left = 271
    Top = 12
    Width = 89
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 0
    Text = 'Edit1'
    OnKeyDown = Edit1KeyDown
  end
  object Edit2: TEdit
    Left = 412
    Top = 40
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 1
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit3: TEdit
    Left = 412
    Top = 68
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 2
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit4: TEdit
    Left = 412
    Top = 96
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 3
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit5: TEdit
    Left = 412
    Top = 124
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 4
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit6: TEdit
    Left = 412
    Top = 152
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 5
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit7: TEdit
    Left = 412
    Top = 180
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 6
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit8: TEdit
    Left = 412
    Top = 208
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 7
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit9: TEdit
    Left = 488
    Top = 180
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 13
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit10: TEdit
    Left = 488
    Top = 68
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 9
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit11: TEdit
    Left = 488
    Top = 96
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 10
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit12: TEdit
    Left = 488
    Top = 124
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 11
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit13: TEdit
    Left = 488
    Top = 152
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 12
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit14: TEdit
    Left = 488
    Top = 32
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 8
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object Edit15: TEdit
    Left = 488
    Top = 208
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 14
    Text = 'Edit2'
    OnKeyDown = Edit2KeyDown
  end
  object CheckBox1: TCheckBox
    Left = 412
    Top = 308
    Width = 129
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'Interrupts Enabled'
    TabOrder = 23
    OnClick = CheckBox1Click
    OnKeyPress = CheckBox2KeyPress
  end
  object CheckBox2: TCheckBox
    Left = 412
    Top = 280
    Width = 13
    Height = 17
    Anchors = [akTop, akRight]
    Color = clBtnFace
    ParentColor = False
    TabOrder = 15
    OnClick = CheckBox1Click
    OnKeyPress = CheckBox2KeyPress
  end
  object CheckBox3: TCheckBox
    Left = 428
    Top = 280
    Width = 13
    Height = 17
    Anchors = [akTop, akRight]
    TabOrder = 16
    OnClick = CheckBox1Click
    OnKeyPress = CheckBox2KeyPress
  end
  object CheckBox4: TCheckBox
    Left = 444
    Top = 280
    Width = 13
    Height = 17
    Anchors = [akTop, akRight]
    TabOrder = 17
    OnClick = CheckBox1Click
    OnKeyPress = CheckBox2KeyPress
  end
  object CheckBox5: TCheckBox
    Left = 460
    Top = 280
    Width = 13
    Height = 17
    Anchors = [akTop, akRight]
    TabOrder = 18
    OnClick = CheckBox1Click
    OnKeyPress = CheckBox2KeyPress
  end
  object CheckBox6: TCheckBox
    Left = 475
    Top = 280
    Width = 13
    Height = 17
    Anchors = [akTop, akRight]
    TabOrder = 19
    OnClick = CheckBox1Click
    OnKeyPress = CheckBox2KeyPress
  end
  object CheckBox7: TCheckBox
    Left = 492
    Top = 280
    Width = 13
    Height = 17
    Anchors = [akTop, akRight]
    TabOrder = 20
    OnClick = CheckBox1Click
    OnKeyPress = CheckBox2KeyPress
  end
  object CheckBox8: TCheckBox
    Left = 508
    Top = 280
    Width = 13
    Height = 17
    Anchors = [akTop, akRight]
    TabOrder = 21
    OnClick = CheckBox1Click
    OnKeyPress = CheckBox2KeyPress
  end
  object CheckBox9: TCheckBox
    Left = 524
    Top = 280
    Width = 13
    Height = 17
    Anchors = [akTop, akRight]
    TabOrder = 22
    OnClick = CheckBox1Click
    OnKeyPress = CheckBox2KeyPress
  end
  object Button1: TButton
    Left = 8
    Top = 300
    Width = 57
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'View...'
    TabOrder = 24
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 172
    Top = 300
    Width = 45
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Step'
    TabOrder = 27
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 220
    Top = 300
    Width = 61
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Step Over'
    TabOrder = 28
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 120
    Top = 300
    Width = 49
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Run To'
    TabOrder = 26
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 76
    Top = 300
    Width = 41
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Run'
    TabOrder = 25
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 284
    Top = 300
    Width = 61
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Exit Func'
    TabOrder = 29
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 349
    Top = 301
    Width = 45
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Help'
    TabOrder = 32
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 365
    Top = 12
    Width = 21
    Height = 21
    Anchors = [akTop, akRight]
    Caption = '<-'
    TabOrder = 33
    OnClick = Button8Click
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 14
    Top = 46
    object HexValues1: TMenuItem
      Caption = 'Hex Values'
      OnClick = HexValues1Click
    end
    object DecimalValues1: TMenuItem
      Caption = 'Decimal Values'
      OnClick = DecimalValues1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ASCIIBytes1: TMenuItem
      Caption = 'ASCII Bytes'
      OnClick = ASCIIBytes1Click
    end
  end
end
