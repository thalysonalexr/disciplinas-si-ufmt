object FExe3: TFExe3
  Left = 0
  Top = 0
  Caption = 'FExe3'
  ClientHeight = 265
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 137
    Height = 249
    Caption = 'Lista 1'
    TabOrder = 0
    object Lista1: TListBox
      Left = 8
      Top = 16
      Width = 126
      Height = 230
      ItemHeight = 13
      PopupMenu = PopupMenu1
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 259
    Top = 8
    Width = 129
    Height = 249
    Caption = 'Lista 2'
    TabOrder = 1
    object Lista2: TListBox
      Left = 3
      Top = 16
      Width = 118
      Height = 230
      ItemHeight = 13
      PopupMenu = PopupMenu2
      TabOrder = 0
    end
  end
  object btnMoverDir: TButton
    Left = 151
    Top = 16
    Width = 102
    Height = 49
    Caption = 'Mover->'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Sitka Small'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnMoverDirClick
  end
  object btnMoverEsq: TButton
    Left = 151
    Top = 71
    Width = 102
    Height = 50
    Caption = '<-Mover'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Sitka Small'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnMoverEsqClick
  end
  object btnMoverAllDir: TButton
    Left = 151
    Top = 144
    Width = 102
    Height = 50
    Caption = 'Mover todos ->'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Sitka Small'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnMoverAllDirClick
  end
  object btnMoveAllEsq: TButton
    Left = 151
    Top = 200
    Width = 102
    Height = 54
    Caption = '<- Mover todos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Sitka Small'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnMoveAllEsqClick
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 264
    object Inserir1: TMenuItem
      Caption = 'Inserir'
      OnClick = Inserir1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 312
    Top = 264
    object Inserir2: TMenuItem
      Caption = 'Inserir'
      OnClick = Inserir2Click
    end
  end
end
