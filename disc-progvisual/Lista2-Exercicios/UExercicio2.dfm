object FExercicio2: TFExercicio2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 02'
  ClientHeight = 199
  ClientWidth = 323
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
    Left = 120
    Top = 158
    Width = 79
    Height = 33
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 16
    Width = 289
    Height = 89
    TabOrder = 0
  end
  object Button1: TButton
    Left = 32
    Top = 111
    Width = 113
    Height = 34
    Caption = 'Inverter linhas'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 111
    Width = 113
    Height = 34
    Caption = 'Remover espa'#231'os'
    TabOrder = 2
    OnClick = Button2Click
  end
end
