object FCadEstados: TFCadEstados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Estados'
  ClientHeight = 292
  ClientWidth = 437
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
  object DBGridEstados: TDBGrid
    Left = 8
    Top = 16
    Width = 409
    Height = 129
    DataSource = DataEstados
    FixedColor = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'NomeEstado'
        Title.Caption = 'Estado'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sigla'
        Title.Caption = 'UF'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupPaises'
        Title.Caption = 'Pa'#237's'
        Width = 177
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 232
    Width = 409
    Height = 41
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object btnInserir: TButton
      Left = 3
      Top = 7
      Width = 62
      Height = 29
      Caption = 'Inserir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnInserirClick
    end
    object btnAlterar: TButton
      Left = 71
      Top = 7
      Width = 62
      Height = 29
      Caption = 'Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TButton
      Left = 139
      Top = 7
      Width = 62
      Height = 29
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnConfirmar: TButton
      Left = 207
      Top = 7
      Width = 62
      Height = 29
      Caption = 'Confirmar'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TButton
      Left = 275
      Top = 7
      Width = 62
      Height = 29
      Caption = 'Cancelar'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnCancelarClick
    end
    object btnSair: TButton
      Left = 343
      Top = 7
      Width = 62
      Height = 29
      Caption = 'Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnSairClick
    end
  end
  object GrupoDados: TGroupBox
    Left = 8
    Top = 151
    Width = 409
    Height = 82
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 11
      Top = 16
      Width = 81
      Height = 14
      Caption = 'Nome do Estado'
      FocusControl = DBNomeEstado
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 191
      Top = 16
      Width = 24
      Height = 14
      Caption = 'Sigla'
      FocusControl = DBUF
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 242
      Top = 16
      Width = 20
      Height = 14
      Caption = 'Pa'#237's'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNomeEstado: TDBEdit
      Left = 11
      Top = 35
      Width = 174
      Height = 22
      DataField = 'NomeEstado'
      DataSource = DataEstados
      TabOrder = 0
    end
    object DBUF: TDBEdit
      Left = 191
      Top = 35
      Width = 30
      Height = 22
      DataField = 'Sigla'
      DataSource = DataEstados
      TabOrder = 1
    end
    object DBLookupEstados: TDBLookupComboBox
      Left = 242
      Top = 35
      Width = 151
      Height = 22
      DataField = 'LookupPaises'
      DataSource = DataEstados
      TabOrder = 2
    end
  end
  object QueryPaises: TADOQuery
    Active = True
    Connection = FPrincipal.ConnDBCidades
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades.paises')
    Left = 304
    Top = 88
  end
  object QueryEstados: TADOQuery
    Active = True
    Connection = FPrincipal.ConnDBCidades
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades.estados')
    Left = 336
    Top = 88
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
    object QueryEstadosLookupPaises: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupPaises'
      LookupDataSet = QueryPaises
      LookupKeyFields = 'idPais'
      LookupResultField = 'NomePais'
      KeyFields = 'idPais'
      Size = 45
      Lookup = True
    end
  end
  object DataEstados: TDataSource
    DataSet = QueryEstados
    Left = 368
    Top = 88
  end
end
