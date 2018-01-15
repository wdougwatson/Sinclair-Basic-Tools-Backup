object MemMapWindow: TMemMapWindow
  Left = 995
  Top = 374
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Memory Map'
  ClientHeight = 233
  ClientWidth = 269
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 214
    Width = 45
    Height = 13
    Caption = 'Highlight:'
  end
  object FastIMG1: TFastIMG
    Left = 8
    Top = 8
    Width = 258
    Height = 194
    Transparent = False
    Picture = '(None)'
    AutoSize = False
    SizeMode = smGDI
    DrawStyle = dsCenter
    DIBLeft = 0
    DIBTop = 0
    Color = clBlack
    ParentColor = False
  end
  object ComboBox1: TComboBox
    Left = 56
    Top = 210
    Width = 117
    Height = 19
    Style = csOwnerDrawVariable
    ItemHeight = 13
    TabOrder = 1
    OnChange = ComboBox1Change
    OnMeasureItem = ComboBox1MeasureItem
    Items.Strings = (
      'None'
      'Display File'
      'Attributes'
      'Printer Buffer'
      'System Variables'
      'Channels'
      'BASIC Program'
      'Variables'
      'Edit Line'
      'Workspace'
      'Calculator Stack'
      'Spare RAM'
      'Machine Stack'
      'GOSUB Stack'
      'UDGs')
  end
  object Button1: TButton
    Left = 176
    Top = 210
    Width = 43
    Height = 19
    Caption = 'Clear'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 210
    Width = 41
    Height = 19
    Caption = 'Help'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 12
    Top = 12
  end
end
