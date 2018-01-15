object TapeWindow: TTapeWindow
  Tag = 1
  Left = 149
  Top = 142
  Width = 380
  Height = 267
  BorderIcons = [biSystemMenu]
  Caption = 'Tape Image Builder'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 8
    Width = 111
    Height = 13
    Caption = 'Current tape contents:'
  end
  object ListView1: TListView
    Left = 8
    Top = 24
    Width = 350
    Height = 157
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        MaxWidth = 23
        MinWidth = 23
        Width = 23
      end
      item
        AutoSize = True
        Caption = 'Type'
      end>
    ColumnClick = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    LargeImages = ImageList1
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    SmallImages = ImageList1
    TabOrder = 0
    ViewStyle = vsReport
    OnDblClick = ListView1DblClick
    OnSelectItem = ListView1SelectItem
  end
  object BitBtn1: TBitBtn
    Left = 312
    Top = 191
    Width = 21
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 't'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Marlett'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
    Layout = blGlyphRight
  end
  object BitBtn2: TBitBtn
    Left = 336
    Top = 191
    Width = 21
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'u'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Marlett'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
    Layout = blGlyphBottom
  end
  object Button1: TButton
    Left = 48
    Top = 191
    Width = 45
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Add...'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 191
    Width = 45
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Delete'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 4
    Top = 191
    Width = 37
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Clear'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 144
    Top = 191
    Width = 65
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Properties'
    TabOrder = 6
    OnClick = Button4Click
  end
  object PopupMenu1: TPopupMenu
    Left = 12
    Top = 48
    object FromFile1: TMenuItem
      Caption = 'From File...'
      OnClick = FromFile1Click
    end
    object CurrentProgram1: TMenuItem
      Caption = 'From Current...'
      object Program1: TMenuItem
        Caption = 'Program'
        OnClick = Program1Click
      end
      object Screen1: TMenuItem
        Caption = 'Screen'
        OnClick = Screen1Click
      end
      object CodeBlock1: TMenuItem
        Caption = 'Memory Block'
        OnClick = CodeBlock1Click
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 12
    Top = 80
    object File1: TMenuItem
      Caption = 'File'
      object OpenTapeImage1: TMenuItem
        Caption = 'Open Tape Image...'
        OnClick = FromFile1Click
      end
      object AddFromImage1: TMenuItem
        Caption = 'Add From Image...'
        OnClick = FromFile1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object SaveImage1: TMenuItem
        Caption = 'Save Image'
        OnClick = SaveImage1Click
      end
      object SaveImageAs1: TMenuItem
        Caption = 'Save Image As...'
        OnClick = SaveImageAs1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Edit5: TMenuItem
      Caption = 'Edit'
      object CutBlock1: TMenuItem
        Caption = 'Cut Block'
        OnClick = CutBlock1Click
      end
      object CopyBlock1: TMenuItem
        Caption = 'Copy Block'
        OnClick = CopyBlock1Click
      end
      object PasteBlock1: TMenuItem
        Caption = 'Paste Block'
        OnClick = PasteBlock1Click
      end
      object DeleteBlock1: TMenuItem
        Caption = 'Delete Block'
        OnClick = Button2Click
      end
    end
    object Block1: TMenuItem
      Caption = 'Block'
      object AddFromFile1: TMenuItem
        Caption = 'Add From File'
        OnClick = FromFile1Click
      end
      object FromCurrent1: TMenuItem
        Caption = 'Add From Current...'
        object Program2: TMenuItem
          Caption = 'Program'
          OnClick = Program1Click
        end
        object Screen2: TMenuItem
          Caption = 'Screen'
          OnClick = Screen1Click
        end
        object MemoryBlock1: TMenuItem
          Caption = 'Memory Block'
          OnClick = CodeBlock1Click
        end
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Export1: TMenuItem
        Caption = 'Export...'
      end
      object SaveAs1: TMenuItem
        Caption = 'Save As...'
        OnClick = SaveAs1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object MoveUp1: TMenuItem
        Caption = 'Move Up'
        OnClick = BitBtn1Click
      end
      object MoveDown1: TMenuItem
        Caption = 'Move Down'
        OnClick = BitBtn2Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Properties1: TMenuItem
        Caption = 'Properties'
        OnClick = Button4Click
      end
    end
    object Streaming1: TMenuItem
      Caption = 'Streaming'
      object RedirectLOADcommands1: TMenuItem
        Caption = 'LOAD/MERGE/VERIFY Commands'
        OnClick = RedirectLOADcommands1Click
      end
      object RedirectSAVEcommands1: TMenuItem
        Caption = 'SAVE Commands'
        OnClick = RedirectSAVEcommands1Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object TapeCreatorHelp1: TMenuItem
        Caption = 'Tape Creator Help'
        OnClick = TapeCreatorHelp1Click
      end
    end
  end
  object ImageList1: TImageList
    Left = 12
    Top = 112
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000FFFFFF00808080008080800080808000808080008080800000000000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C000C0C0
      C000C0C0C000FFFFFF0080808000808080008080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0080808000C0C0
      C0000000000000000000C0C0C000C0C0C000C0C0C0000000000000000000C0C0
      C000FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0080808000C0C0
      C0000000000000000000C0C0C000C0C0C000C0C0C0000000000000000000C0C0
      C000FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000800300000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000008003000000000000
      FFFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end