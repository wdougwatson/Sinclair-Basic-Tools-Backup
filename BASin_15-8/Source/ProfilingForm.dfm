object ProfileForm: TProfileForm
  Tag = 1
  Left = 872
  Top = 248
  Width = 408
  Height = 260
  BorderIcons = [biSystemMenu]
  Caption = 'Profile Results'
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
    Top = 28
    Width = 388
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 384
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 48
    Width = 384
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 327
    Top = 197
    Width = 67
    Height = 21
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Close'
    Default = True
    TabOrder = 3
    OnClick = Button1Click
  end
  object ListView1: TListView
    Left = 8
    Top = 68
    Width = 384
    Height = 121
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        Caption = 'Usage'
        MaxWidth = 108
        MinWidth = 108
        Width = 108
      end
      item
        Caption = 'Line'
      end
      item
        Caption = 'Contents'
      end>
    ColumnClick = False
    MultiSelect = True
    ReadOnly = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
    OnAdvancedCustomDrawItem = ListView1AdvancedCustomDrawItem
    OnSelectItem = ListView1SelectItem
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 200
    Width = 157
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Relative Usage Statistics'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object Button2: TButton
    Left = 175
    Top = 197
    Width = 87
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Show Selected'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 267
    Top = 200
    Width = 57
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Help'
    TabOrder = 4
    OnClick = Button3Click
  end
end
