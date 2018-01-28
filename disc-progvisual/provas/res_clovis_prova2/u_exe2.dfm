object FExe2: TFExe2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Quest'#227'o 2'
  ClientHeight = 267
  ClientWidth = 629
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
    Left = 266
    Top = 164
    Width = 93
    Height = 13
    Caption = 'Campo de Pesquisa'
  end
  object BtnDescricao: TBitBtn
    Left = 5
    Top = 220
    Width = 121
    Height = 39
    Caption = 'Consultar Descri'#231#227'o'
    TabOrder = 0
    OnClick = BtnDescricaoClick
  end
  object BtnFabricante: TBitBtn
    Left = 129
    Top = 220
    Width = 121
    Height = 39
    Caption = 'Consultar Fabricante'
    TabOrder = 1
    OnClick = BtnFabricanteClick
  end
  object BtnMonitor: TBitBtn
    Left = 253
    Top = 220
    Width = 121
    Height = 39
    Caption = 'Consultar Monitor'
    TabOrder = 2
    OnClick = BtnMonitorClick
  end
  object BtnCapacidade: TBitBtn
    Left = 377
    Top = 220
    Width = 121
    Height = 39
    Caption = 'Consultar Capacidade'
    TabOrder = 3
    OnClick = BtnCapacidadeClick
  end
  object edit1: TEdit
    Left = 198
    Top = 183
    Width = 242
    Height = 21
    TabOrder = 4
  end
  object BtnSair: TButton
    Left = 502
    Top = 220
    Width = 121
    Height = 39
    Caption = 'Sair'
    TabOrder = 5
    OnClick = BtnSairClick
  end
end
