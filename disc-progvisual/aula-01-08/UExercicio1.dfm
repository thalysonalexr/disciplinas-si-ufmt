object FExercicio1: TFExercicio1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 01'
  ClientHeight = 234
  ClientWidth = 332
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
  object btnCalcular: TButton
    Left = 240
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = btnCalcularClick
  end
  object btnSair: TButton
    Left = 240
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = btnSairClick
  end
  object btnExportar: TButton
    Left = 240
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Exportar'
    TabOrder = 2
    OnClick = btnExportarClick
  end
end
