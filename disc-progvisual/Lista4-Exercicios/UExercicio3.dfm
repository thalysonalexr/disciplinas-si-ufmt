object FExercicio3: TFExercicio3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 03'
  ClientHeight = 117
  ClientWidth = 201
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Valor de D:'
  end
  object btnApresentar: TButton
    Left = 64
    Top = 75
    Width = 75
    Height = 25
    Caption = 'Apresentar'
    TabOrder = 0
    OnClick = btnApresentarClick
  end
end
