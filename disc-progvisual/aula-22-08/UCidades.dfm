object FCadCidades: TFCadCidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cidades'
  ClientHeight = 298
  ClientWidth = 503
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
  object DBGridCidades: TDBGrid
    Left = 8
    Top = 16
    Width = 489
    Height = 120
    DataSource = DataCidades
    FixedColor = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'NomeCidade'
        Title.Caption = 'Cidade'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupEstNome'
        Title.Caption = 'Estado'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupEstUF'
        Title.Caption = 'UF'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupPaises'
        Title.Caption = 'Pa'#237's'
        Width = 114
        Visible = True
      end>
  end
  object GrupoDados: TGroupBox
    Left = 8
    Top = 142
    Width = 489
    Height = 83
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 24
      Width = 80
      Height = 14
      Caption = 'Nome da cidade'
      FocusControl = DBNomeCidade
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 263
      Top = 21
      Width = 33
      Height = 14
      Caption = 'Estado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNomeCidade: TDBEdit
      Left = 13
      Top = 43
      Width = 227
      Height = 22
      DataField = 'NomeCidade'
      DataSource = DataCidades
      TabOrder = 0
    end
    object DBLookupEstados: TDBLookupComboBox
      Left = 263
      Top = 40
      Width = 184
      Height = 22
      DataField = 'LookupEstNome'
      DataSource = DataCidades
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 231
    Width = 489
    Height = 58
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object btnInserir: TButton
      Left = 3
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Inserir'
      TabOrder = 0
      OnClick = btnInserirClick
    end
    object btnAlterar: TButton
      Left = 84
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TButton
      Left = 165
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnCancelar: TButton
      Left = 327
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Cancelar'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnSair: TButton
      Left = 408
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
    object btnConfirmar: TButton
      Left = 246
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Confirmar'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnConfirmarClick
    end
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.ConnDBCidades
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades.cidades')
    Left = 336
    Top = 96
    object QueryCidadesidCidade: TAutoIncField
      FieldName = 'idCidade'
      ReadOnly = True
    end
    object QueryCidadesNomeCidade: TStringField
      FieldName = 'NomeCidade'
      Size = 45
    end
    object QueryCidadesidEstado: TIntegerField
      FieldName = 'idEstado'
    end
    object QueryCidadesLookupEstNome: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupEstNome'
      LookupDataSet = QueryEstados
      LookupKeyFields = 'idEstado'
      LookupResultField = 'NomeEstado'
      KeyFields = 'idEstado'
      Size = 45
      Lookup = True
    end
    object QueryCidadesLookupEstUF: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupEstUF'
      LookupDataSet = QueryEstados
      LookupKeyFields = 'idEstado'
      LookupResultField = 'Sigla'
      KeyFields = 'idEstado'
      Size = 2
      Lookup = True
    end
    object QueryCidadesLookupIDPais: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LookupIDPais'
      LookupDataSet = QueryEstados
      LookupKeyFields = 'idEstado'
      LookupResultField = 'idPais'
      KeyFields = 'idEstado'
      Lookup = True
    end
    object QueryCidadesLookupPaises: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupPaises'
      LookupDataSet = QueryPaises
      LookupKeyFields = 'idPais'
      LookupResultField = 'NomePais'
      KeyFields = 'LookupIDPais'
      Size = 45
      Lookup = True
    end
  end
  object QueryEstados: TADOQuery
    Active = True
    Connection = FPrincipal.ConnDBCidades
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades.estados')
    Left = 368
    Top = 96
    object QueryEstadosidEstado: TAutoIncField
      FieldName = 'idEstado'
      ReadOnly = True
    end
    object QueryEstadosNomeEstado: TStringField
      FieldName = 'NomeEstado'
      Size = 45
    end
    object QueryEstadosSigla: TStringField
      FieldName = 'Sigla'
      Size = 2
    end
    object QueryEstadosidPais: TIntegerField
      FieldName = 'idPais'
    end
  end
  object QueryPaises: TADOQuery
    Active = True
    Connection = FPrincipal.ConnDBCidades
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades.paises')
    Left = 400
    Top = 96
  end
  object DataCidades: TDataSource
    DataSet = QueryCidades
    Left = 304
    Top = 96
  end
end
