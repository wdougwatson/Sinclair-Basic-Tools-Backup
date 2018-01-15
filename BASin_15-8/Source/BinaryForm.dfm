object BinaryWindow: TBinaryWindow
  Tag = 1
  Left = 151
  Top = 177
  Width = 357
  Height = 335
  BorderIcons = [biSystemMenu]
  Caption = 'Import Binary Object(s)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 133
    Height = 13
    Caption = 'Objects to be imported:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 154
    Width = 85
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Import options'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel4: TThemeBevel
    Left = 8
    Top = 170
    Width = 331
    Height = 2
    Anchors = [akLeft, akRight, akBottom]
  end
  object Panel5: TPanel
    Left = 8
    Top = 176
    Width = 332
    Height = 86
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 7
    object Label9: TLabel
      Left = 60
      Top = 32
      Width = 195
      Height = 13
      Caption = 'No options available for this import type.'
    end
  end
  object Panel6: TPanel
    Left = 5
    Top = 176
    Width = 332
    Height = 86
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 9
    object Label11: TLabel
      Left = 227
      Top = 34
      Width = 39
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Address'
    end
    object Label12: TLabel
      Left = 139
      Top = 6
      Width = 42
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Filename'
    end
    object Edit7: TEdit
      Left = 274
      Top = 32
      Width = 57
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit9: TEdit
      Left = 191
      Top = 4
      Width = 140
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 1
      Text = 'Edit1'
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 176
    Width = 332
    Height = 86
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 23
      Top = 7
      Width = 65
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Bytes per line'
    end
    object Label4: TLabel
      Left = 257
      Top = 7
      Width = 22
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Step'
    end
    object Label3: TLabel
      Left = 171
      Top = 7
      Width = 24
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Start'
    end
    object Label5: TLabel
      Left = 227
      Top = 58
      Width = 39
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Address'
    end
    object Edit1: TEdit
      Left = 95
      Top = 4
      Width = 57
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      Text = 'Edit1'
    end
    object CheckBox1: TCheckBox
      Left = 235
      Top = 31
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      Caption = 'Include POKEs'
      TabOrder = 3
      OnClick = CheckBox2Click
    end
    object Edit3: TEdit
      Left = 203
      Top = 4
      Width = 45
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 1
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 287
      Top = 4
      Width = 45
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 2
      Text = 'Edit1'
    end
    object Edit4: TEdit
      Left = 275
      Top = 56
      Width = 57
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 4
      Text = 'Edit1'
    end
  end
  object Panel4: TPanel
    Left = 8
    Top = 176
    Width = 332
    Height = 86
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 8
    object Label8: TLabel
      Left = 227
      Top = 7
      Width = 39
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Address'
    end
    object Edit6: TEdit
      Left = 275
      Top = 4
      Width = 57
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      Text = 'Edit1'
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 176
    Width = 332
    Height = 86
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 6
    object Label7: TLabel
      Left = 207
      Top = 7
      Width = 59
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Line Number'
    end
    object Label10: TLabel
      Left = 139
      Top = 58
      Width = 39
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Address'
    end
    object Edit5: TEdit
      Left = 275
      Top = 4
      Width = 57
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      Text = 'Edit1'
    end
    object CheckBox2: TCheckBox
      Left = 267
      Top = 33
      Width = 65
      Height = 17
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      Caption = 'Add stub'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object Edit8: TEdit
      Left = 187
      Top = 56
      Width = 57
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 2
      Text = 'Edit1'
    end
    object CheckBox3: TCheckBox
      Left = 255
      Top = 57
      Width = 77
      Height = 17
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      Caption = 'Force Jump'
      TabOrder = 3
    end
  end
  object Panel7: TPanel
    Left = 8
    Top = 176
    Width = 332
    Height = 86
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 10
    object Label13: TLabel
      Left = 191
      Top = 62
      Width = 38
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Send as'
    end
    object Label14: TLabel
      Left = 203
      Top = 7
      Width = 65
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Bytes per line'
    end
    object Label15: TLabel
      Left = 191
      Top = 35
      Width = 76
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Asm declaration'
    end
    object ComboBox1: TComboBox
      Left = 236
      Top = 60
      Width = 93
      Height = 21
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Decimal'
        'Hexadecimal'
        'Binary')
    end
    object Edit10: TEdit
      Left = 275
      Top = 4
      Width = 57
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 1
      Text = 'Edit1'
    end
    object Edit11: TEdit
      Left = 275
      Top = 32
      Width = 57
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 2
      Text = 'db'
    end
  end
  object Button1: TButton
    Left = 280
    Top = 272
    Width = 61
    Height = 21
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 272
    Width = 53
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Okay'
    Default = True
    Enabled = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 272
    Width = 45
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Help'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Panel2: TPanel
    Left = 8
    Top = 28
    Width = 332
    Height = 115
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 5
    object ListView1: TListView
      Left = 0
      Top = 0
      Width = 332
      Height = 115
      Align = alClient
      Columns = <
        item
          Caption = 'Object Name'
        end
        item
          Caption = 'Import As'
        end>
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnAdvancedCustomDrawItem = ListView1AdvancedCustomDrawItem
      OnSelectItem = ListView1SelectItem
    end
    object Button4: TButton
      Left = 284
      Top = 24
      Width = 19
      Height = 21
      PopupMenu = PopupMenu1
      TabOrder = 1
      Visible = False
      OnMouseDown = Button4MouseDown
    end
  end
  object Button5: TButton
    Left = 56
    Top = 272
    Width = 45
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Delete'
    TabOrder = 4
    OnClick = Button5Click
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 12
    Top = 48
    object DATADecimal1: TMenuItem
      Caption = 'DATA Decimal'
      OnClick = DATADecimal1Click
    end
    object DATAHex1: TMenuItem
      Tag = 1
      Caption = 'DATA Hex'
      OnClick = DATADecimal1Click
    end
    object REMstatement1: TMenuItem
      Tag = 2
      Caption = 'REM statement'
      OnClick = DATADecimal1Click
    end
    object ExtractBASIC1: TMenuItem
      Tag = 3
      Caption = 'Extract BASIC'
      OnClick = DATADecimal1Click
    end
    object SendtoMemory1: TMenuItem
      Tag = 4
      Caption = 'Send to Memory'
      OnClick = DATADecimal1Click
    end
    object SendtoTape1: TMenuItem
      Tag = 5
      Caption = 'Send to Tape'
      OnClick = DATADecimal1Click
    end
    object SendtoClipboard1: TMenuItem
      Tag = 6
      Caption = 'Send to Clipboard'
      OnClick = DATADecimal1Click
    end
  end
end
