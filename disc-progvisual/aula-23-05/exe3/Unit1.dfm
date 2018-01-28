object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'LBL - Exercicio 03'
  ClientHeight = 266
  ClientWidth = 377
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 146
    Width = 100
    Height = 13
    Caption = 'Texto para inser'#231#227'o:'
  end
  object btnAtribuir: TButton
    Left = 56
    Top = 200
    Width = 75
    Height = 41
    Caption = 'Atribuir'
    TabOrder = 0
    OnClick = btnAtribuirClick
  end
  object btnFinalizar: TButton
    Left = 240
    Top = 200
    Width = 75
    Height = 41
    Caption = 'Finalizar'
    TabOrder = 1
    OnClick = btnFinalizarClick
  end
  object mmoTexto: TMemo
    Left = 24
    Top = 19
    Width = 329
    Height = 121
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object CampoTexto: TEdit
    Left = 24
    Top = 165
    Width = 329
    Height = 21
    TabOrder = 3
  end
end
