object FQuestao2: TFQuestao2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Quest'#227'o 02'
  ClientHeight = 388
  ClientWidth = 437
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
  object SpeedButton1: TSpeedButton
    Left = 344
    Top = 348
    Width = 75
    Height = 29
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object btnConsultar: TButton
    Left = 296
    Top = 198
    Width = 89
    Height = 25
    Caption = 'Consultar'
    TabOrder = 0
    OnClick = btnConsultarClick
  end
  object RadioOp: TRadioGroup
    Left = 264
    Top = 8
    Width = 155
    Height = 154
    Caption = 'Consultar por:'
    ItemIndex = 0
    Items.Strings = (
      'Descricao'
      'Fabricante'
      'Monitor')
    TabOrder = 1
  end
  object CampoPesquisa: TEdit
    Left = 264
    Top = 171
    Width = 155
    Height = 21
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 264
    Top = 229
    Width = 155
    Height = 108
    Caption = 'Consulta por Capacidade (HD)'
    TabOrder = 3
    object Label1: TLabel
      Left = 24
      Top = 21
      Width = 89
      Height = 13
      Caption = 'Inicio                Fim'
    end
    object btnConsultarFaixa: TButton
      Left = 32
      Top = 67
      Width = 89
      Height = 25
      Caption = 'Consultar'
      TabOrder = 0
      OnClick = btnConsultarFaixaClick
    end
    object CampoInicio: TEdit
      Left = 16
      Top = 40
      Width = 49
      Height = 21
      TabOrder = 1
    end
    object CampoFim: TEdit
      Left = 87
      Top = 40
      Width = 50
      Height = 21
      TabOrder = 2
    end
  end
end
