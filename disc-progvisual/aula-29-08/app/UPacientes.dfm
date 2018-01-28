object FPacientes: TFPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pacientes'
  ClientHeight = 365
  ClientWidth = 680
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
    Left = 8
    Top = 161
    Width = 657
    Height = 128
    Caption = 'Dados'
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBNomePaciente
    end
    object Label2: TLabel
      Left = 520
      Top = 32
      Width = 96
      Height = 13
      Caption = 'Data de Nascimento'
    end
    object Label3: TLabel
      Left = 16
      Top = 75
      Width = 45
      Height = 13
      Caption = 'Conv'#234'nio'
      FocusControl = DBLookupConvenio
    end
    object Label4: TLabel
      Left = 352
      Top = 75
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBLookupCidade
    end
    object DBNomePaciente: TDBEdit
      Left = 16
      Top = 48
      Width = 473
      Height = 21
      DataField = 'NomePaciente'
      DataSource = DataPacientes
      TabOrder = 0
    end
    object DBLookupConvenio: TDBLookupComboBox
      Left = 16
      Top = 94
      Width = 265
      Height = 21
      DataField = 'look_convenios'
      DataSource = DataPacientes
      TabOrder = 1
    end
    object DBLookupCidade: TDBLookupComboBox
      Left = 352
      Top = 94
      Width = 281
      Height = 21
      DataField = 'look_cidades'
      DataSource = DataPacientes
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 512
      Top = 48
      Width = 121
      Height = 21
      DataField = 'Nascimento'
      DataSource = DataPacientes
      TabOrder = 3
    end
  end
  object GrupoLista: TGroupBox
    Left = 8
    Top = 8
    Width = 657
    Height = 153
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 3
      Top = 22
      Width = 651
      Height = 120
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
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomePaciente'
          Title.Caption = 'Nome do Paciente'
          Width = 202
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nascimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'look_convenios'
          Title.Caption = 'Conv'#234'nio'
          Width = 171
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'look_cidades'
          Title.Caption = 'Cidade'
          Width = 155
          Visible = True
        end>
    end
  end
  object TGroupBox
    Left = 11
    Top = 288
    Width = 654
    Height = 64
    TabOrder = 2
    object btnInserir: TSpeedButton
      Left = 16
      Top = 16
      Width = 95
      Height = 38
      Caption = 'Inserir'
      OnClick = btnInserirClick
    end
    object btnAlterar: TSpeedButton
      Left = 113
      Top = 16
      Width = 95
      Height = 38
      Caption = 'Alterar'
      OnClick = btnAlterarClick
    end
    object btnExcluir: TSpeedButton
      Left = 211
      Top = 16
      Width = 95
      Height = 38
      Caption = 'Excluir'
      OnClick = btnExcluirClick
    end
    object btnConfirmar: TSpeedButton
      Left = 308
      Top = 16
      Width = 95
      Height = 38
      Caption = 'Confirmar'
      Enabled = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 406
      Top = 16
      Width = 95
      Height = 38
      Caption = 'Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
    end
    object btnSair: TSpeedButton
      Left = 538
      Top = 16
      Width = 95
      Height = 38
      Caption = 'Sair'
      OnClick = btnSairClick
    end
  end
  object QueryPacientes: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pacientes')
    Left = 352
    Top = 128
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
    object QueryPacienteslook_convenios: TStringField
      FieldKind = fkLookup
      FieldName = 'look_convenios'
      LookupDataSet = QueryTipos
      LookupKeyFields = 'idTiposConvenio'
      LookupResultField = 'Nome'
      KeyFields = 'idTiposConvenio'
      Size = 60
      Lookup = True
    end
    object QueryPacienteslook_cidades: TStringField
      FieldKind = fkLookup
      FieldName = 'look_cidades'
      LookupDataSet = QueryCidades
      LookupKeyFields = 'idCidade'
      LookupResultField = 'NomeCidade'
      KeyFields = 'idCidade'
      Size = 60
      Lookup = True
    end
  end
  object DataPacientes: TDataSource
    DataSet = QueryPacientes
    Left = 288
    Top = 128
  end
  object QueryTipos: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tiposconvenios')
    Left = 416
    Top = 128
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades')
    Left = 480
    Top = 128
  end
end
