object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'LPV - Exercicio 04'
  ClientHeight = 315
  ClientWidth = 328
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
    Top = 24
    Width = 39
    Height = 13
    Caption = 'Valor 01'
  end
  object Label2: TLabel
    Left = 184
    Top = 24
    Width = 39
    Height = 13
    Caption = 'Valor 02'
  end
  object CampoTexto1: TEdit
    Left = 24
    Top = 43
    Width = 139
    Height = 21
    TabOrder = 0
  end
  object CampoTexto2: TEdit
    Left = 169
    Top = 43
    Width = 136
    Height = 21
    TabOrder = 1
  end
  object btnSomar: TButton
    Left = 88
    Top = 160
    Width = 75
    Height = 41
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnSomarClick
  end
  object btnSair: TButton
    Left = 230
    Top = 272
    Width = 75
    Height = 26
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btnSairClick
  end
  object GroupBox1: TGroupBox
    Left = 56
    Top = 81
    Width = 225
    Height = 64
    Caption = 'Resultado'
    Enabled = False
    TabOrder = 4
    object CampoResultado: TEdit
      Left = 16
      Top = 24
      Width = 193
      Height = 21
      TabOrder = 0
    end
  end
  object btnSubtrair: TButton
    Left = 169
    Top = 160
    Width = 72
    Height = 41
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnSubtrairClick
  end
  object btnMultiplicar: TButton
    Left = 88
    Top = 207
    Width = 75
    Height = 41
    Caption = 'x'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnMultiplicarClick
  end
  object btnDividir: TButton
    Left = 169
    Top = 207
    Width = 72
    Height = 41
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnDividirClick
  end
  object btnLimpar: TButton
    Left = 24
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 8
    OnClick = btnLimparClick
  end
end
