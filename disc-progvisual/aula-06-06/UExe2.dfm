object FExe2: TFExe2
  Left = 0
  Top = 0
  Caption = 'FExe2'
  ClientHeight = 260
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 216
    Top = 152
    Width = 106
    Height = 33
    Caption = 'Contar Vogais'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei UI'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object spdBtnSair: TSpeedButton
    Left = 203
    Top = 216
    Width = 342
    Height = 36
    Caption = 'Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = spdBtnSairClick
  end
  object Grid: TStringGrid
    Left = 24
    Top = 24
    Width = 409
    Height = 105
    DefaultColWidth = 80
    DefaultRowHeight = 18
    FixedCols = 0
    FixedRows = 0
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 152
    Width = 90
    Height = 33
    Caption = 'Atribuir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = '@Microsoft YaHei UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 151
    Width = 90
    Height = 33
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = '@Microsoft YaHei UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object Lista1: TListBox
    Left = 448
    Top = 24
    Width = 105
    Height = 161
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei UI'
    Font.Style = []
    ItemHeight = 15
    Items.Strings = (
      'THALYSON'
      'ALEXANDRE'
      'RODRIGUES'
      'SOUSA'
      'UFMT'
      'DELPHI'
      'ORACLE'
      'LPV')
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 3
  end
  object Memo: TMemo
    Left = 559
    Top = 24
    Width = 178
    Height = 161
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Microsoft JhengHei UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object Button2: TButton
    Left = 336
    Top = 152
    Width = 97
    Height = 33
    Caption = 'Inverter Str'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Microsoft JhengHei UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 16
    object Inserir1: TMenuItem
      Caption = 'Inserir'
      OnClick = Inserir1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
end
