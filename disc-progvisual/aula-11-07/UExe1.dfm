object FExe1: TFExe1
  Left = 0
  Top = 0
  Caption = 'FExe1'
  ClientHeight = 356
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object g1: TStringGrid
    Left = 8
    Top = 8
    Width = 329
    Height = 129
    FixedCols = 0
    FixedRows = 0
    TabOrder = 0
  end
  object g2: TStringGrid
    Left = 352
    Top = 8
    Width = 329
    Height = 129
    FixedCols = 0
    FixedRows = 0
    TabOrder = 1
  end
  object Somar: TButton
    Left = 184
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 2
    OnClick = SomarClick
  end
  object Sair: TButton
    Left = 448
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
  end
end
