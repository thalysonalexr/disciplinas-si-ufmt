object FCidades: TFCidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cidades'
  ClientHeight = 379
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GrupoDados: TGroupBox
    Left = 22
    Top = 230
    Width = 383
    Height = 83
    Caption = 'Campos para Preencher'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 22
      Width = 31
      Height = 18
      Caption = 'Nome'
      FocusControl = DBNome
    end
    object Label4: TLabel
      Left = 302
      Top = 22
      Width = 36
      Height = 18
      Caption = 'Estado'
    end
    object DBNome: TDBEdit
      Left = 16
      Top = 41
      Width = 265
      Height = 26
      DataField = 'Nome'
      DataSource = DataCidades
      TabOrder = 0
    end
    object DBSigla: TDBEdit
      Left = 302
      Top = 41
      Width = 59
      Height = 26
      DataField = 'Sigla'
      DataSource = DataCidades
      TabOrder = 1
    end
  end
  object DBGridCidades: TDBGrid
    Left = 22
    Top = 16
    Width = 383
    Height = 208
    DataSource = DataCidades
    FixedColor = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Trebuchet MS'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDCidade'
        Title.Caption = 'C'#243'digo'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Caption = 'Nome da Cidade'
        Width = 257
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sigla'
        Title.Caption = 'Estado'
        Width = 65
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 22
    Top = 319
    Width = 383
    Height = 50
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object btnInserir: TSpeedButton
      Left = 3
      Top = 11
      Width = 51
      Height = 30
      Caption = 'Inserir'
      OnClick = btnInserirClick
    end
    object btnEditar: TSpeedButton
      Left = 60
      Top = 11
      Width = 48
      Height = 30
      Caption = 'Editar'
      OnClick = btnEditarClick
    end
    object btnExcluir: TSpeedButton
      Left = 114
      Top = 11
      Width = 50
      Height = 30
      Caption = 'Excluir'
      OnClick = btnExcluirClick
    end
    object btnConfirmar: TSpeedButton
      Left = 170
      Top = 11
      Width = 66
      Height = 30
      Caption = 'Confirmar'
      Enabled = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 242
      Top = 11
      Width = 66
      Height = 30
      Caption = 'Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
    end
    object btnSair: TSpeedButton
      Left = 311
      Top = 11
      Width = 66
      Height = 30
      Caption = 'Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      OnClick = btnSairClick
    end
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.LolcalMysql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades;')
    Left = 360
    Top = 104
    object QueryCidadesIDCidade: TIntegerField
      DisplayWidth = 12
      FieldName = 'IDCidade'
    end
    object QueryCidadesNome: TStringField
      DisplayWidth = 41
      FieldName = 'Nome'
      Size = 50
    end
    object QueryCidadesSigla: TStringField
      DisplayWidth = 7
      FieldName = 'Sigla'
      Size = 2
    end
  end
  object DataCidades: TDataSource
    DataSet = QueryCidades
    Left = 360
    Top = 56
  end
end
