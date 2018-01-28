object FExercicio1: TFExercicio1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 01'
  ClientHeight = 255
  ClientWidth = 276
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
    Left = 32
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Objeto 1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Objeto 2'
    TabOrder = 1
    OnClick = Button2Click
  end
end
