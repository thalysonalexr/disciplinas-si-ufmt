object FAgendamentos: TFAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Agendamentos'
  ClientHeight = 349
  ClientWidth = 811
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
    Width = 795
    Height = 120
    Caption = 'Dados'
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 24
      Width = 117
      Height = 13
      Caption = 'Data para agendamento'
      FocusControl = DBData
    end
    object Label2: TLabel
      Left = 208
      Top = 24
      Width = 33
      Height = 13
      Caption = 'M'#233'dico'
      FocusControl = DBLookupComboBox1
    end
    object Label3: TLabel
      Left = 19
      Top = 70
      Width = 41
      Height = 13
      Caption = 'Paciente'
      FocusControl = DBLookupComboBox2
    end
    object Label4: TLabel
      Left = 417
      Top = 70
      Width = 38
      Height = 13
      Caption = 'Hospital'
      FocusControl = DBLookupComboBox3
    end
    object DBData: TDBEdit
      Left = 19
      Top = 43
      Width = 134
      Height = 21
      DataField = 'DataAgendamento'
      DataSource = DataAgendamentos
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 208
      Top = 43
      Width = 569
      Height = 21
      DataField = 'Lookup_Medicos'
      DataSource = DataAgendamentos
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 19
      Top = 89
      Width = 358
      Height = 21
      DataField = 'Lookup_Pacientes'
      DataSource = DataAgendamentos
      TabOrder = 2
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 417
      Top = 89
      Width = 360
      Height = 21
      DataField = 'Lookup_Hospitais'
      DataSource = DataAgendamentos
      TabOrder = 3
    end
  end
  object GrupoLista: TGroupBox
    Left = 8
    Top = 8
    Width = 793
    Height = 153
    Caption = 'Tipos dispon'#237'veis'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 3
      Top = 22
      Width = 782
      Height = 120
      DataSource = DataAgendamentos
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
          FieldName = 'idAgendamento'
          Title.Caption = 'C'#243'digo'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lookup_Pacientes'
          Title.Caption = 'Nome do Paciente'
          Width = 212
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lookup_Medicos'
          Title.Caption = 'M'#233'dico'
          Width = 201
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lookup_Hospitais'
          Title.Caption = 'Hospital'
          Width = 194
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataAgendamento'
          Title.Caption = 'Data da consulta'
          Width = 102
          Visible = True
        end>
    end
  end
  object TGroupBox
    Left = 8
    Top = 277
    Width = 795
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
      Left = 130
      Top = 16
      Width = 95
      Height = 38
      Caption = 'Alterar'
      OnClick = btnAlterarClick
    end
    object btnExcluir: TSpeedButton
      Left = 245
      Top = 16
      Width = 95
      Height = 38
      Caption = 'Excluir'
      OnClick = btnExcluirClick
    end
    object btnConfirmar: TSpeedButton
      Left = 357
      Top = 16
      Width = 95
      Height = 38
      Caption = 'Confirmar'
      Enabled = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 470
      Top = 16
      Width = 95
      Height = 38
      Caption = 'Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
    end
    object btnSair: TSpeedButton
      Left = 687
      Top = 16
      Width = 95
      Height = 38
      Caption = 'Sair'
      OnClick = btnSairClick
    end
  end
  object QueryHospitais: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from revisaolpv.hospitais')
    Left = 328
    Top = 128
  end
  object DataAgendamentos: TDataSource
    DataSet = QueryAgendamentos
    Left = 264
    Top = 128
  end
  object QueryPacientes: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from revisaolpv.pacientes')
    Left = 360
    Top = 128
  end
  object QueryMedicos: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from revisaolpv.medicos')
    Left = 392
    Top = 128
  end
  object QueryAgendamentos: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from revisaolpv.agendamentos')
    Left = 296
    Top = 128
    object QueryAgendamentosidAgendamento: TAutoIncField
      FieldName = 'idAgendamento'
      ReadOnly = True
    end
    object QueryAgendamentosidPaciente: TIntegerField
      FieldName = 'idPaciente'
    end
    object QueryAgendamentosidHospital: TIntegerField
      FieldName = 'idHospital'
    end
    object QueryAgendamentosidMedico: TIntegerField
      FieldName = 'idMedico'
    end
    object QueryAgendamentosDataAgendamento: TDateField
      FieldName = 'DataAgendamento'
    end
    object QueryAgendamentosLookup_Medicos: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_Medicos'
      LookupDataSet = QueryMedicos
      LookupKeyFields = 'idMedico'
      LookupResultField = 'NomeMedico'
      KeyFields = 'idMedico'
      Size = 45
      Lookup = True
    end
    object QueryAgendamentosLookup_Hospitais: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_Hospitais'
      LookupDataSet = QueryHospitais
      LookupKeyFields = 'idHospital'
      LookupResultField = 'NomeHospital'
      KeyFields = 'idHospital'
      Size = 80
      Lookup = True
    end
    object QueryAgendamentosLookup_Pacientes: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_Pacientes'
      LookupDataSet = QueryPacientes
      LookupKeyFields = 'idPaciente'
      LookupResultField = 'NomePaciente'
      KeyFields = 'idPaciente'
      Size = 45
      Lookup = True
    end
  end
end
