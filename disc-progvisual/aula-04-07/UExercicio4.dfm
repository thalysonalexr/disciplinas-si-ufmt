object FExercicio4: TFExercicio4
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 04'
  ClientHeight = 110
  ClientWidth = 277
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
  object Button1: TButton
    Left = 194
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Ler Valores'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 194
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 194
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button3Click
  end
end
