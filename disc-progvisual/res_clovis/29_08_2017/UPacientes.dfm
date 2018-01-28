object FPacientes: TFPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pacientes'
  ClientHeight = 440
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GrupoDados: TGroupBox
    Left = 0
    Top = 267
    Width = 920
    Height = 110
    Align = alTop
    Caption = ' Dados '
    Enabled = False
    TabOrder = 0
    ExplicitTop = 171
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 352
      Top = 18
      Width = 55
      Height = 13
      Caption = 'Nascimento'
      FocusControl = DBNascimento
    end
    object Label3: TLabel
      Left = 464
      Top = 18
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBLookCidades
    end
    object Label4: TLabel
      Left = 12
      Top = 59
      Width = 83
      Height = 13
      Caption = 'Tipo de Conv'#234'nio'
      FocusControl = DBLookTipo
    end
    object DBNome: TDBEdit
      Left = 12
      Top = 32
      Width = 317
      Height = 21
      DataField = 'NomePaciente'
      DataSource = DataPacientes
      TabOrder = 0
    end
    object DBNascimento: TDBEdit
      Left = 352
      Top = 32
      Width = 93
      Height = 21
      DataField = 'Nascimento'
      DataSource = DataPacientes
      TabOrder = 1
    end
    object DBLookCidades: TDBLookupComboBox
      Left = 464
      Top = 32
      Width = 433
      Height = 21
      DataField = 'looK_cidades'
      DataSource = DataPacientes
      TabOrder = 2
    end
    object DBLookTipo: TDBLookupComboBox
      Left = 12
      Top = 73
      Width = 433
      Height = 21
      DataField = 'look_tipo'
      DataSource = DataPacientes
      TabOrder = 3
    end
  end
  object GrupoLista: TGroupBox
    Left = 0
    Top = 0
    Width = 920
    Height = 267
    Align = alTop
    Caption = ' Cidades Cadastradas '
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 916
      Height = 250
      Align = alClient
      DataSource = DataPacientes
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'idPaciente'
          Title.Caption = 'C'#243'digo'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomePaciente'
          Title.Caption = 'Nome'
          Width = 280
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nascimento'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'looK_cidades'
          Title.Caption = 'Cidade'
          Width = 199
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'look_tipo'
          Title.Caption = 'Tipo de Conv'#234'nio'
          Width = 199
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 390
    Width = 920
    Height = 50
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitTop = 282
    ExplicitWidth = 473
    object BInserir: TSpeedButton
      Left = 5
      Top = 7
      Width = 102
      Height = 38
      Caption = 'Inserir'
      OnClick = BInserirClick
    end
    object BAlterar: TSpeedButton
      Left = 165
      Top = 7
      Width = 102
      Height = 38
      Caption = 'Alterar'
      OnClick = BAlterarClick
    end
    object BExcluir: TSpeedButton
      Left = 326
      Top = 7
      Width = 102
      Height = 38
      Caption = 'Excluir'
      OnClick = BExcluirClick
    end
    object BConfirmar: TSpeedButton
      Left = 487
      Top = 7
      Width = 102
      Height = 38
      Caption = 'Confirmar'
      Enabled = False
      OnClick = BConfirmarClick
    end
    object BCancelar: TSpeedButton
      Left = 648
      Top = 7
      Width = 102
      Height = 38
      Caption = 'Cancelar'
      Enabled = False
      OnClick = BCancelarClick
    end
    object BSair: TSpeedButton
      Left = 809
      Top = 7
      Width = 102
      Height = 38
      Caption = 'Sair'
      OnClick = BSairClick
    end
  end
  object QueryPacientes: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pacientes')
    Left = 388
    Top = 54
    object QueryPacientesidPaciente: TAutoIncField
      FieldName = 'idPaciente'
      ReadOnly = True
    end
    object QueryPacientesidTiposConvenio: TIntegerField
      FieldName = 'idTiposConvenio'
    end
    object QueryPacientesidCidade: TIntegerField
      FieldName = 'idCidade'
    end
    object QueryPacientesNomePaciente: TStringField
      FieldName = 'NomePaciente'
      Size = 45
    end
    object QueryPacientesNascimento: TDateField
      FieldName = 'Nascimento'
    end
    object QueryPacienteslooK_cidades: TStringField
      FieldKind = fkLookup
      FieldName = 'looK_cidades'
      LookupDataSet = QueryCidades
      LookupKeyFields = 'idCidade'
      LookupResultField = 'NomeCidade'
      KeyFields = 'idCidade'
      Size = 60
      Lookup = True
    end
    object QueryPacienteslook_tipo: TStringField
      FieldKind = fkLookup
      FieldName = 'look_tipo'
      LookupDataSet = QueryTipos
      LookupKeyFields = 'idTiposConvenio'
      LookupResultField = 'Nome'
      KeyFields = 'idTiposConvenio'
      Size = 60
      Lookup = True
    end
  end
  object DataPacientes: TDataSource
    DataSet = QueryPacientes
    Left = 178
    Top = 76
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades')
    Left = 342
    Top = 120
    object QueryCidadesidCidade: TAutoIncField
      FieldName = 'idCidade'
      ReadOnly = True
    end
    object QueryCidadesNomeCidade: TStringField
      FieldName = 'NomeCidade'
      Size = 60
    end
    object QueryCidadesEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
  end
  object QueryTipos: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tiposconvenios')
    Left = 448
    Top = 110
    object QueryTiposidTiposConvenio: TAutoIncField
      FieldName = 'idTiposConvenio'
      ReadOnly = True
    end
    object QueryTiposNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
  end
end
