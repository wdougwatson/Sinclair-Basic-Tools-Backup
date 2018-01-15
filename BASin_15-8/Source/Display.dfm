object DisplayWindow: TDisplayWindow
  Left = 650
  Top = 271
  Width = 323
  Height = 278
  Caption = 'BASin Display Output'
  Color = clBtnFace
  UseDockManager = True
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 307
    Height = 222
    Align = alClient
    BevelOuter = bvNone
    Color = clBtnShadow
    TabOrder = 0
    object DisplayIMG: TFastIMG
      Left = 2
      Top = 2
      Width = 320
      Height = 240
      Transparent = False
      Picture = '(None)'
      AutoSize = False
      SizeMode = smGDI
      DrawStyle = dsDraw
      DIBLeft = 0
      DIBTop = 0
      OnMouseDown = DisplayIMGMouseDown
    end
    object FuzzIMG: TFastIMG
      Left = 0
      Top = 0
      Width = 307
      Height = 222
      Transparent = False
      Picture = '(None)'
      AutoSize = False
      SizeMode = smGDI
      DrawStyle = dsDraw
      DIBLeft = 0
      DIBTop = 0
      Align = alClient
      OnMouseDown = DisplayIMGMouseDown
    end
  end
  object PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 4
    Top = 4
    object Token1: TMenuItem
      Caption = 'Token'
      Default = True
      Enabled = False
    end
    object Detokenise1: TMenuItem
      Caption = 'Detokenise'
    end
    object Help2: TMenuItem
      Caption = 'Token Help...'
    end
  end
  object MainMenu1: TMainMenu
    Left = 36
    Top = 4
    object WindowSize1: TMenuItem
      Caption = 'Display'
      OnClick = MenuItemClick
      object N100320x2401: TMenuItem
        Tag = 1
        Caption = '100% (320x240)'
        Hint = 'Normal (1:1) Window size'
        ShortCut = 16496
        OnClick = MenuItemClick
      end
      object N200640x4801: TMenuItem
        Tag = 2
        Caption = '200% (640x480)'
        Hint = 'Double (2:1) Window Size'
        ShortCut = 16497
        OnClick = MenuItemClick
      end
      object Custom1: TMenuItem
        Caption = 'Custom ()'
        Hint = 'The current dimensions'
        OnClick = MenuItemClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Force11Aspect1: TMenuItem
        Tag = 3
        Caption = 'Force 1:1 Aspect'
        Hint = 'Force BASin to maintain correct width/height ratio'
        OnClick = MenuItemClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Print1: TMenuItem
        Caption = 'Print...'
        OnClick = Print1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Cut1: TMenuItem
        Tag = 4
        Caption = 'Cut'
        Enabled = False
        Hint = 'Remove the selected text and send it to the clipboard'
        ShortCut = 16472
        OnClick = MenuItemClick
      end
      object Copy1: TMenuItem
        Tag = 5
        Caption = 'Copy'
        Enabled = False
        Hint = 'Copy the selected text to the clipboard'
        ShortCut = 16451
        OnClick = MenuItemClick
      end
      object Paste1: TMenuItem
        Tag = 6
        Caption = 'Paste'
        Enabled = False
        Hint = 'Paste text stored on the clipboard to the edit line'
        ShortCut = 16470
        OnClick = MenuItemClick
      end
      object Delete1: TMenuItem
        Tag = 7
        Caption = 'Delete'
        Enabled = False
        Hint = 'Remove the selected text from the edit line'
        ShortCut = 16430
        OnClick = MenuItemClick
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object DisplayHelp1: TMenuItem
        Caption = 'Display Help'
        OnClick = DisplayHelp1Click
      end
    end
  end
end
