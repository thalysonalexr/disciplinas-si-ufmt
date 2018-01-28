object FEquipamentosUtil: TFEquipamentosUtil
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Equipamentos Utilizados'
  ClientHeight = 369
  ClientWidth = 662
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
  object GrupoLista: TGroupBox
    Left = 8
    Top = 8
    Width = 641
    Height = 153
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGridAreaPlantio: TDBGrid
      Left = 8
      Top = 16
      Width = 630
      Height = 134
      DataSource = DataEqUtil
      FixedColor = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CodigoUso'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lookup_area'
          Title.Caption = 'Nome da '#225'rea'
          Width = 270
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lookup_equip'
          Title.Caption = 'Equipamento'
          Width = 188
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataUso'
          Title.Caption = 'Data uso'
          Width = 94
          Visible = True
        end>
    end
  end
  object GrupoDados: TGroupBox
    Left = 8
    Top = 164
    Width = 641
    Height = 109
    Caption = 'Campos a serem preenchidos'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 55
      Height = 14
      Caption = 'Data uso'
      FocusControl = DBDataUso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 28
      Height = 14
      Caption = #193'rea'
      FocusControl = DBLookupArea
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 208
      Top = 16
      Width = 81
      Height = 14
      Caption = 'Equipamento'
      FocusControl = DBLookupEquipamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBDataUso: TDBEdit
      Left = 16
      Top = 32
      Width = 134
      Height = 21
      DataField = 'DataUso'
      DataSource = DataEqUtil
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupArea: TDBLookupComboBox
      Left = 16
      Top = 72
      Width = 144
      Height = 21
      DataField = 'Lookup_area'
      DataSource = DataEqUtil
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupEquipamento: TDBLookupComboBox
      Left = 208
      Top = 32
      Width = 404
      Height = 21
      DataField = 'Lookup_equip'
      DataSource = DataEqUtil
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object GrupoOperacoes: TGroupBox
    Left = 8
    Top = 272
    Width = 641
    Height = 82
    TabOrder = 2
    object btnInserir: TSpeedButton
      Left = 16
      Top = 24
      Width = 90
      Height = 40
      Caption = 'Inserir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnInserirClick
    end
    object btnAlterar: TSpeedButton
      Left = 112
      Top = 24
      Width = 90
      Height = 40
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAlterarClick
    end
    object btnExcluir: TSpeedButton
      Left = 208
      Top = 24
      Width = 90
      Height = 40
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnExcluirClick
    end
    object btnConfirmar: TSpeedButton
      Left = 336
      Top = 24
      Width = 90
      Height = 40
      Caption = 'Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 432
      Top = 24
      Width = 90
      Height = 40
      Caption = 'Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCancelarClick
    end
    object btnSair: TSpeedButton
      Left = 536
      Top = 24
      Width = 90
      Height = 40
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSairClick
    end
  end
  object QueryAreas: TADOQuery
    Active = True
    Connection = FPrincipal.ConexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aval3.areasplantios')
    Left = 576
    Top = 120
  end
  object QueryEquipamentos: TADOQuery
    Active = True
    Connection = FPrincipal.ConexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aval3.equipamentos')
    Left = 544
    Top = 120
  end
  object DataEqUtil: TDataSource
    DataSet = QueryEqUtilizados
    Left = 608
    Top = 120
  end
  object QueryEqUtilizados: TADOQuery
    Active = True
    Connection = FPrincipal.ConexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aval3.equipamentosutilizados')
    Left = 512
    Top = 120
    object QueryEqUtilizadosCodigoUso: TAutoIncField
      FieldName = 'CodigoUso'
      ReadOnly = True
    end
    object QueryEqUtilizadosCodigoArea: TIntegerField
      FieldName = 'CodigoArea'
    end
    object QueryEqUtilizadosCodigoEq: TIntegerField
      FieldName = 'CodigoEq'
    end
    object QueryEqUtilizadosDataUso: TIntegerField
      FieldName = 'DataUso'
    end
    object QueryEqUtilizadosLookup_area: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_area'
      LookupDataSet = QueryAreas
      LookupKeyFields = 'CodigoArea'
      LookupResultField = 'NomeArea'
      KeyFields = 'CodigoArea'
      Size = 10
      Lookup = True
    end
    object QueryEqUtilizadosLookup_equip: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_equip'
      LookupDataSet = QueryEquipamentos
      LookupKeyFields = 'CodigoEq'
      LookupResultField = 'DescricaoEq'
      KeyFields = 'CodigoEq'
      Size = 30
      Lookup = True
    end
  end
end
