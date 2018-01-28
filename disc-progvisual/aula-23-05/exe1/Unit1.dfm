object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Linguagem de Programa'#231#227'o Visual - Exercicio 01'
  ClientHeight = 231
  ClientWidth = 357
  Color = clBtnFace
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
    Top = 40
    Width = 37
    Height = 13
    Caption = 'Texto 1'
  end
  object Label2: TLabel
    Left = 216
    Top = 40
    Width = 37
    Height = 13
    Caption = 'Texto 2'
  end
  object CampoTexto1: TEdit
    Left = 24
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object CampoTexto2: TEdit
    Left = 216
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 112
    Top = 160
    Width = 129
    Height = 33
    Caption = 'Concatenar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object CampoResultado: TEdit
    Left = 56
    Top = 112
    Width = 249
    Height = 21
    TabOrder = 3
  end
end
