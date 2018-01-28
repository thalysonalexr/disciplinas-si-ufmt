object FExe1: TFExe1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FExe1'
  ClientHeight = 258
  ClientWidth = 332
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
    Left = 16
    Top = 151
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object Lista: TListBox
    Left = 8
    Top = 16
    Width = 316
    Height = 129
    ItemHeight = 13
    TabOrder = 0
    OnDblClick = ListaDblClick
  end
  object CampoTexto: TEdit
    Left = 53
    Top = 151
    Width = 271
    Height = 21
    TabOrder = 1
    OnKeyUp = CampoTextoKeyUp
  end
  object btnAcrescentar: TButton
    Left = 8
    Top = 178
    Width = 73
    Height = 39
    Caption = 'Acrescentar'
    Enabled = False
    TabOrder = 2
    OnClick = btnAcrescentarClick
  end
  object btnExcluir: TButton
    Left = 87
    Top = 178
    Width = 74
    Height = 39
    Caption = 'Excluir'
    Enabled = False
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object btnContar: TButton
    Left = 167
    Top = 178
    Width = 76
    Height = 39
    Caption = 'Contar'
    Enabled = False
    TabOrder = 4
    OnClick = btnContarClick
  end
  object btnSair: TButton
    Left = 249
    Top = 178
    Width = 75
    Height = 39
    Caption = 'Sair'
    TabOrder = 5
    OnClick = btnSairClick
  end
  object btnExcluirAll: TButton
    Left = 87
    Top = 223
    Width = 75
    Height = 27
    Caption = 'Exc. Tudo'
    Enabled = False
    TabOrder = 6
    OnClick = btnExcluirAllClick
  end
end
