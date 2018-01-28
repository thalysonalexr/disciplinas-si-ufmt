object FExercicio7: TFExercicio7
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 07'
  ClientHeight = 237
  ClientWidth = 312
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
  object btnContarCons: TButton
    Left = 16
    Top = 160
    Width = 107
    Height = 25
    Caption = 'Contar Consoantes'
    TabOrder = 0
    OnClick = btnContarConsClick
  end
  object Button1: TButton
    Left = 184
    Top = 160
    Width = 107
    Height = 25
    Caption = 'Substituir Caracter'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 197
    Width = 107
    Height = 25
    Caption = 'Inverter Linhas'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 184
    Top = 197
    Width = 107
    Height = 25
    Caption = 'Caracter Maiusculo'
    TabOrder = 3
    OnClick = Button3Click
  end
end
