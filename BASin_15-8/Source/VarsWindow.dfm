object VariablesWindow: TVariablesWindow
  Left = 918
  Top = 458
  Width = 362
  Height = 199
  BorderIcons = [biSystemMenu]
  Caption = 'Variables'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 4
    Top = 4
    Width = 330
    Height = 82
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        Caption = 'Name'
        Width = 75
      end
      item
        Caption = 'Type'
        Width = 75
      end
      item
        Caption = 'Contents'
        Width = 200
      end>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    ViewStyle = vsReport
    OnClick = ListView1Click
  end
  object Button1: TButton
    Left = 70
    Top = 89
    Width = 59
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Edit'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 6
    Top = 89
    Width = 59
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Watch'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 287
    Top = 88
    Width = 47
    Height = 21
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Close'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 228
    Top = 88
    Width = 49
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Help'
    TabOrder = 4
    OnClick = Button4Click
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 8
    Top = 28
    object Edit1: TMenuItem
      Caption = 'Edit...'
      OnClick = Edit1Click
    end
    object WatchthisVariable1: TMenuItem
      Caption = 'Watch this Variable'
      OnClick = WatchthisVariable1Click
    end
  end
end
