object FBanco: TFBanco
  Left = 0
  Top = 0
  Caption = 'Banco'
  ClientHeight = 315
  ClientWidth = 221
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
  object RadioOperacoes: TRadioGroup
    Left = 21
    Top = 16
    Width = 179
    Height = 141
    Caption = ' Opera'#231#245'es '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Items.Strings = (
      'Depositar'
      'Sacar'
      'Verificar Saldo')
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 21
    Top = 170
    Width = 179
    Height = 71
    Caption = ' Valor '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object CampoValor: TEdit
      Left = 20
      Top = 26
      Width = 121
      Height = 31
      TabOrder = 0
    end
  end
  object BtnExecutar: TBitBtn
    Left = 12
    Top = 262
    Width = 91
    Height = 41
    Caption = 'Executar'
    TabOrder = 2
    OnClick = BtnExecutarClick
  end
  object BtnSair: TBitBtn
    Left = 124
    Top = 262
    Width = 91
    Height = 41
    Caption = 'Sair'
    TabOrder = 3
    OnClick = BtnSairClick
  end
end
