object FExe2: TFExe2
  Left = 0
  Top = 0
  Caption = 'FExe2'
  ClientHeight = 326
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 358
    Top = 275
    Width = 117
    Height = 43
    Caption = 'Vogais'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 20
    Top = 279
    Width = 117
    Height = 43
    Caption = 'Atribuir Texto'
    OnClick = SpeedButton2Click
  end
  object Label1: TLabel
    Left = 16
    Top = 231
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object SpeedButton3: TSpeedButton
    Left = 500
    Top = 275
    Width = 117
    Height = 43
    Caption = 'Palavras'
    OnClick = SpeedButton3Click
  end
  object CampoTexto: TEdit
    Left = 16
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 216
    Top = 275
    Width = 117
    Height = 43
    Caption = 'Inverter Matriz'
    TabOrder = 1
    OnClick = Button1Click
  end
  object lista1: TListBox
    Left = 26
    Top = 6
    Width = 145
    Height = 201
    ItemHeight = 13
    TabOrder = 2
  end
end
