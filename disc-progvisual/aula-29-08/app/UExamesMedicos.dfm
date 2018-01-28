object FExamesMedicos: TFExamesMedicos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exames M'#233'dicos'
  ClientHeight = 369
  ClientWidth = 849
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
    Width = 833
    Height = 128
    Caption = 'Dados'
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 438
      Top = 70
      Width = 48
      Height = 13
      Caption = 'Resultado'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 41
      Height = 13
      Caption = 'Paciente'
      FocusControl = DBLookupPaciente
    end
    object Label3: TLabel
      Left = 438
      Top = 24
      Width = 33
      Height = 13
      Caption = 'M'#233'dico'
      FocusControl = DBLookupComboBox2
    end
    object Label4: TLabel
      Left = 16
      Top = 70
      Width = 70
      Height = 13
      Caption = 'Tipo de exame'
      FocusControl = DBLookupComboBox3
    end
    object DBEdit1: TDBEdit
      Left = 438
      Top = 89
      Width = 379
      Height = 21
      DataField = 'Resultado'
      DataSource = DataExamesMed
      TabOrder = 0
    end
    object DBLookupPaciente: TDBLookupComboBox
      Left = 16
      Top = 40
      Width = 369
      Height = 21
      DataField = 'Lookup_Pacientes'
      DataSource = DataExamesMed
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 438
      Top = 40
      Width = 379
      Height = 21
      DataField = 'Lookup_Medicos'
      DataSource = DataExamesMed
      TabOrder = 2
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 16
      Top = 89
      Width = 369
      Height = 21
      DataField = 'Lookup_Exames'
      DataSource = DataExamesMed
      TabOrder = 3
    end
  end
  object GrupoLista: TGroupBox
    Left = 8
    Top = 8
    Width = 833
    Height = 147
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 3
      Top = 14
      Width = 822
      Height = 130
      DataSource = DataExamesMed
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
          FieldName = 'Lookup_Pacientes'
          Title.Caption = 'Paciente'
          Width = 231
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lookup_Medicos'
          Title.Caption = 'M'#233'dico'
          Width = 215
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lookup_Exames'
          Title.Caption = 'Tipo de Exame'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Resultado'
          Visible = True
        end>
    end
  end
  object TGroupBox
    Left = 72
    Top = 295
    Width = 657
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
  end
  object DataExamesMed: TDataSource
    DataSet = QueryExamesMed
    Left = 288
    Top = 128
  end
  object QueryMedicos: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from medicos')
    Left = 384
    Top = 128
  end
  object QueryExames: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tiposexames')
    Left = 416
    Top = 128
  end
  object QueryExamesMed: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from examesmedicos')
    Left = 320
    Top = 128
    object QueryExamesMedidPaciente: TIntegerField
      FieldName = 'idPaciente'
    end
    object QueryExamesMedidMedico: TIntegerField
      FieldName = 'idMedico'
    end
    object QueryExamesMedidTiposExame: TIntegerField
      FieldName = 'idTiposExame'
    end
    object QueryExamesMedResultado: TStringField
      FieldName = 'Resultado'
      Size = 30
    end
    object QueryExamesMedLookup_Pacientes: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_Pacientes'
      LookupDataSet = QueryPacientes
      LookupKeyFields = 'idPaciente'
      LookupResultField = 'NomePaciente'
      KeyFields = 'idPaciente'
      Size = 45
      Lookup = True
    end
    object QueryExamesMedLookup_Medicos: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_Medicos'
      LookupDataSet = QueryMedicos
      LookupKeyFields = 'idMedico'
      LookupResultField = 'NomeMedico'
      KeyFields = 'idMedico'
      Size = 45
      Lookup = True
    end
    object QueryExamesMedLookup_Exames: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_Exames'
      LookupDataSet = QueryExames
      LookupKeyFields = 'idTiposExame'
      LookupResultField = 'Descricao'
      KeyFields = 'idTiposExame'
      Size = 30
      Lookup = True
    end
  end
end
