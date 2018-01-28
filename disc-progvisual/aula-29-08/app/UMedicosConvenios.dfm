object FMedicosConvenios: TFMedicosConvenios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro Conv'#234'nios e M'#233'dicos'
  ClientHeight = 312
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
  object GrupoGrid: TGroupBox
    Left = 8
    Top = 8
    Width = 487
    Height = 161
    TabOrder = 0
    object DBGridMedicos: TDBGrid
      Left = 3
      Top = 9
      Width = 481
      Height = 149
      DataSource = DataMedicosConv
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
          FieldName = 'Lookup_medicos'
          Title.Caption = 'M'#233'dico'
          Width = 237
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lookup_convenios'
          Title.Caption = 'Conv'#234'nio'
          Width = 236
          Visible = True
        end>
    end
  end
  object GrupoDados: TGroupBox
    Left = 8
    Top = 172
    Width = 487
    Height = 85
    Caption = 'Campos '#224' preencher'
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 21
      Width = 33
      Height = 13
      Caption = 'M'#233'dico'
    end
    object Label2: TLabel
      Left = 264
      Top = 21
      Width = 45
      Height = 13
      Caption = 'Conv'#234'nio'
    end
    object DBLookupMedico: TDBLookupComboBox
      Left = 24
      Top = 40
      Width = 209
      Height = 21
      DataField = 'Lookup_medicos'
      DataSource = DataMedicosConv
      TabOrder = 0
    end
    object DBLookupConvenio: TDBLookupComboBox
      Left = 264
      Top = 40
      Width = 204
      Height = 21
      DataField = 'Lookup_convenios'
      DataSource = DataMedicosConv
      TabOrder = 1
    end
  end
  object GrupoOperacoes: TGroupBox
    Left = 8
    Top = 255
    Width = 487
    Height = 50
    TabOrder = 2
    object btnInserir: TSpeedButton
      Left = 14
      Top = 13
      Width = 65
      Height = 30
      Caption = 'Inserir'
      OnClick = btnInserirClick
    end
    object btnAlterar: TSpeedButton
      Left = 85
      Top = 13
      Width = 65
      Height = 30
      Caption = 'Alterar'
      OnClick = btnAlterarClick
    end
    object btnExlcuir: TSpeedButton
      Left = 156
      Top = 13
      Width = 65
      Height = 30
      Caption = 'Excluir'
      OnClick = btnExlcuirClick
    end
    object btnConfirmar: TSpeedButton
      Left = 227
      Top = 13
      Width = 65
      Height = 30
      Caption = 'Confirmar'
      Enabled = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 298
      Top = 13
      Width = 65
      Height = 30
      Caption = 'Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
    end
    object btnSair: TSpeedButton
      Left = 403
      Top = 13
      Width = 65
      Height = 30
      Caption = 'Sair'
      OnClick = btnSairClick
    end
  end
  object QueryMedicos: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from revisaolpv.medicos')
    Left = 384
    Top = 40
  end
  object DataMedicosConv: TDataSource
    DataSet = QueryMedicoConv
    Left = 344
    Top = 40
  end
  object QueryConvenios: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from revisaolpv.tiposconvenios')
    Left = 384
    Top = 72
  end
  object QueryMedicoConv: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from revisaolpv.medicosconvenios')
    Left = 384
    Top = 104
    object QueryMedicoConvidTiposConvenio: TIntegerField
      FieldName = 'idTiposConvenio'
    end
    object QueryMedicoConvidMedico: TIntegerField
      FieldName = 'idMedico'
    end
    object QueryMedicoConvLookup_medicos: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_medicos'
      LookupDataSet = QueryMedicos
      LookupKeyFields = 'idMedico'
      LookupResultField = 'NomeMedico'
      KeyFields = 'idMedico'
      Size = 45
      Lookup = True
    end
    object QueryMedicoConvLookup_convenios: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_convenios'
      LookupDataSet = QueryConvenios
      LookupKeyFields = 'idTiposConvenio'
      LookupResultField = 'Nome'
      KeyFields = 'idTiposConvenio'
      Size = 60
      Lookup = True
    end
  end
end
