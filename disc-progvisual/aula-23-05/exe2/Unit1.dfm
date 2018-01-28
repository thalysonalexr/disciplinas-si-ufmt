object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'LPV - Exercicio 02'
  ClientHeight = 141
  ClientWidth = 234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CampoTexto1: TEdit
    Left = 8
    Top = 24
    Width = 105
    Height = 21
    TabOrder = 0
  end
  object CampoTexto2: TEdit
    Left = 119
    Top = 24
    Width = 106
    Height = 21
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 51
    Width = 217
    Height = 46
    Caption = 'GroupBox1'
    Enabled = False
    TabOrder = 2
    object Resultado: TEdit
      Left = 16
      Top = 16
      Width = 185
      Height = 21
      TabOrder = 0
    end
  end
  object Comparar: TButton
    Left = 8
    Top = 108
    Width = 105
    Height = 25
    Caption = 'Comparar'
    TabOrder = 3
    OnClick = CompararClick
  end
  object Sair: TButton
    Left = 119
    Top = 108
    Width = 107
    Height = 25
    Caption = 'Finalizar'
    TabOrder = 4
    OnClick = SairClick
  end
end
