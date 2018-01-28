object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exercicio 13/06'
  ClientHeight = 136
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spdBtnSair: TSpeedButton
    Left = 507
    Top = 103
    Width = 62
    Height = 25
    Caption = 'Sair'
    OnClick = spdBtnSairClick
  end
  object Grid1: TStringGrid
    Left = 16
    Top = 8
    Width = 113
    Height = 89
    ColCount = 4
    DefaultColWidth = 25
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    TabOrder = 0
  end
  object Grid2: TStringGrid
    Left = 135
    Top = 8
    Width = 113
    Height = 89
    ColCount = 4
    DefaultColWidth = 25
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    TabOrder = 1
  end
  object Grid3: TStringGrid
    Left = 254
    Top = 8
    Width = 113
    Height = 89
    ColCount = 4
    DefaultColWidth = 25
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    TabOrder = 2
  end
  object GridResultado: TStringGrid
    Left = 373
    Top = 8
    Width = 196
    Height = 89
    ColCount = 4
    DefaultColWidth = 45
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    TabOrder = 3
  end
  object Button1: TButton
    Left = 16
    Top = 103
    Width = 232
    Height = 25
    Caption = 'Calcular'
    TabOrder = 4
    OnClick = Button1Click
  end
  object btnRandom: TButton
    Left = 254
    Top = 103
    Width = 235
    Height = 25
    Caption = 'Randomizar'
    TabOrder = 5
    OnClick = btnRandomClick
  end
end
