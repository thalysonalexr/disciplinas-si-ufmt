object FHospitais: TFHospitais
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro Hospitais'
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
      DataSource = DataHospitais
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
          FieldName = 'idHospital'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeHospital'
          Title.Caption = 'Hospital'
          Width = 259
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lookup_Cidades'
          Title.Caption = 'Cidade'
          Width = 149
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
      Left = 307
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label2: TLabel
      Left = 14
      Top = 24
      Width = 38
      Height = 13
      Caption = 'Hospital'
      FocusControl = DBCampoNome
    end
    object DBCampoNome: TDBEdit
      Left = 14
      Top = 43
      Width = 203
      Height = 21
      DataField = 'NomeHospital'
      DataSource = DataHospitais
      TabOrder = 0
    end
    object DBLookupCidade: TDBLookupComboBox
      Left = 307
      Top = 43
      Width = 161
      Height = 21
      DataField = 'Lookup_Cidades'
      DataSource = DataHospitais
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
  object QueryHospitais: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from revisaolpv.hospitais')
    Left = 384
    Top = 40
    object QueryHospitaisidHospital: TAutoIncField
      FieldName = 'idHospital'
      ReadOnly = True
    end
    object QueryHospitaisidCidade: TIntegerField
      FieldName = 'idCidade'
    end
    object QueryHospitaisNomeHospital: TStringField
      FieldName = 'NomeHospital'
      Size = 80
    end
    object QueryHospitaisLookup_Cidades: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_Cidades'
      LookupDataSet = QueryCidades
      LookupKeyFields = 'idCidade'
      LookupResultField = 'NomeCidade'
      KeyFields = 'idCidade'
      Size = 60
      Lookup = True
    end
  end
  object DataHospitais: TDataSource
    DataSet = QueryHospitais
    Left = 344
    Top = 40
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from revisaolpv.cidades')
    Left = 384
    Top = 72
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
end
