object FQuestao1: TFQuestao1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Quest'#227'o 01'
  ClientHeight = 215
  ClientWidth = 344
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
    Left = 240
    Top = 32
    Width = 35
    Height = 13
    Caption = 'Chave:'
  end
  object SpeedButton1: TSpeedButton
    Left = 257
    Top = 172
    Width = 65
    Height = 35
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object CampoChave: TEdit
    Left = 240
    Top = 51
    Width = 82
    Height = 21
    TabOrder = 0
  end
  object btnCriptografar: TButton
    Left = 240
    Top = 88
    Width = 82
    Height = 25
    Caption = 'Criptografar'
    TabOrder = 1
    OnClick = btnCriptografarClick
  end
  object btnDecriptografar: TButton
    Left = 240
    Top = 128
    Width = 82
    Height = 25
    Caption = 'Descriptografar'
    TabOrder = 2
    OnClick = btnDecriptografarClick
  end
end
