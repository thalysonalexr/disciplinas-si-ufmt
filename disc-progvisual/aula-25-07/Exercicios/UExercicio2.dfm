object FExercicio2: TFExercicio2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 02'
  ClientHeight = 363
  ClientWidth = 339
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
  object Label4: TLabel
    Left = 23
    Top = 16
    Width = 58
    Height = 18
    Caption = 'Arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSair: TSpeedButton
    Left = 240
    Top = 312
    Width = 81
    Height = 35
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnSairClick
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 127
    Width = 305
    Height = 170
    Caption = 'Opera'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 31
      Width = 121
      Height = 18
      Caption = 'Caracter Pesquisa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 79
      Width = 123
      Height = 18
      Caption = 'Caracter Substituir:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 127
      Width = 108
      Height = 18
      Caption = 'Contar Caracter:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object CampoPesquisa: TEdit
      Left = 143
      Top = 28
      Width = 42
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object CampoSubs: TEdit
      Left = 145
      Top = 76
      Width = 40
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CampoCont: TEdit
      Left = 145
      Top = 119
      Width = 40
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btnSubs: TButton
      Left = 200
      Top = 61
      Width = 89
      Height = 36
      Caption = 'Substituir'
      TabOrder = 3
      OnClick = btnSubsClick
    end
    object btnContar: TButton
      Left = 200
      Top = 111
      Width = 89
      Height = 36
      Caption = 'Contar'
      TabOrder = 4
      OnClick = btnContarClick
    end
  end
  object ListBox1: TListBox
    Left = 16
    Top = 40
    Width = 305
    Height = 81
    ItemHeight = 13
    PopupMenu = PopupMenu1
    TabOrder = 1
  end
  object btnLerOrigem: TButton
    Left = 16
    Top = 303
    Width = 75
    Height = 25
    Caption = 'Ler Origem'
    TabOrder = 2
    OnClick = btnLerOrigemClick
  end
  object btnLerDestino: TButton
    Left = 16
    Top = 330
    Width = 75
    Height = 25
    Caption = 'Ler Destino'
    TabOrder = 3
    OnClick = btnLerDestinoClick
  end
  object btnSalvarOrigem: TButton
    Left = 97
    Top = 303
    Width = 112
    Height = 25
    Caption = 'Salvar na Origem'
    TabOrder = 4
    OnClick = btnSalvarOrigemClick
  end
  object btnSalvarDestino: TButton
    Left = 97
    Top = 330
    Width = 112
    Height = 25
    Caption = 'Salvar no Destino'
    TabOrder = 5
    OnClick = btnSalvarDestinoClick
  end
  object PopupMenu1: TPopupMenu
    Left = 288
    Top = 8
    object Inserir: TMenuItem
      Caption = 'Inserir'
      OnClick = InserirClick
    end
    object Excluir: TMenuItem
      Caption = 'Excluir'
      OnClick = ExcluirClick
    end
  end
end
