object FExercicio1: TFExercicio1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Exerc'#237'cio 01'
  ClientHeight = 218
  ClientWidth = 320
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
    Left = 256
    Top = 185
    Width = 49
    Height = 25
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 16
    Width = 289
    Height = 153
    TabOrder = 0
  end
  object Button1: TButton
    Left = 120
    Top = 185
    Width = 75
    Height = 25
    Caption = 'Corrigir'
    TabOrder = 1
    OnClick = Button1Click
  end
end
