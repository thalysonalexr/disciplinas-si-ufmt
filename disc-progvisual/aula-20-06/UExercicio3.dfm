object FExercicio3: TFExercicio3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 03'
  ClientHeight = 209
  ClientWidth = 232
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
  object btnSair: TSpeedButton
    Left = 143
    Top = 152
    Width = 75
    Height = 41
    Caption = 'Sair'
    OnClick = btnSairClick
  end
  object btnCalcular: TButton
    Left = 143
    Top = 24
    Width = 75
    Height = 41
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = btnCalcularClick
  end
  object Grid: TStringGrid
    Left = 8
    Top = 24
    Width = 129
    Height = 169
    ColCount = 2
    DefaultColWidth = 50
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 25
    FixedRows = 0
    TabOrder = 1
  end
end
