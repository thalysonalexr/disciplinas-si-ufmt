object FExe1: TFExe1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Quest'#227'o 1'
  ClientHeight = 302
  ClientWidth = 379
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
  object Label1: TLabel
    Left = 136
    Top = 173
    Width = 83
    Height = 13
    Caption = 'Valor para Chave'
  end
  object BtnCriptografar: TBitBtn
    Left = 16
    Top = 242
    Width = 105
    Height = 40
    Caption = 'Criptografar'
    TabOrder = 0
    OnClick = BtnCriptografarClick
  end
  object BtnDecriptografar: TBitBtn
    Left = 141
    Top = 242
    Width = 105
    Height = 40
    Caption = 'Descriptografar'
    TabOrder = 1
    OnClick = BtnDecriptografarClick
  end
  object CampoChave: TEdit
    Left = 96
    Top = 192
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object BtnSair: TButton
    Left = 266
    Top = 242
    Width = 95
    Height = 40
    Caption = 'Sair'
    TabOrder = 3
    OnClick = BtnSairClick
  end
end
