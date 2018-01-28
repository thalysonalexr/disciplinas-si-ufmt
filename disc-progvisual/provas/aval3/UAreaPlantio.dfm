object FAreaPlantio: TFAreaPlantio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #193'reas de Plantio'
  ClientHeight = 373
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
    TabOrder = 0
    object DBGridAreaPlantio: TDBGrid
      Left = 5
      Top = 16
      Width = 630
      Height = 134
      DataSource = DataAreas
      FixedColor = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
          FieldName = 'CodigoArea'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lookup_fazendas'
          Title.Caption = 'Fazenda'
          Width = 274
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeArea'
          Title.Caption = 'Nome da Area'
          Width = 147
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AreaHA'
          Title.Caption = 'Area em HA'
          Width = 107
          Visible = True
        end>
    end
  end
  object GrupoDados: TGroupBox
    Left = 8
    Top = 164
    Width = 641
    Height = 117
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
      Top = 21
      Width = 83
      Height = 14
      Caption = 'Nome da '#225'rea'
      FocusControl = DBNomeArea
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 100
      Height = 14
      Caption = 'Tamanho em HA'
      FocusControl = DBAreaHA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 184
      Top = 21
      Width = 49
      Height = 14
      Caption = 'Fazenda'
      FocusControl = DBLookupFazendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNomeArea: TDBEdit
      Left = 16
      Top = 40
      Width = 134
      Height = 21
      DataField = 'NomeArea'
      DataSource = DataAreas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBAreaHA: TDBEdit
      Left = 16
      Top = 80
      Width = 134
      Height = 21
      DataField = 'AreaHA'
      DataSource = DataAreas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupFazendas: TDBLookupComboBox
      Left = 184
      Top = 40
      Width = 441
      Height = 21
      DataField = 'Lookup_fazendas'
      DataSource = DataAreas
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
    Top = 283
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
      Left = 535
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
  object QueryFazendas: TADOQuery
    Active = True
    Connection = FPrincipal.ConexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aval3.fazendas')
    Left = 576
    Top = 120
  end
  object QueryAreas: TADOQuery
    Active = True
    Connection = FPrincipal.ConexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aval3.areasplantios')
    Left = 544
    Top = 120
    object QueryAreasCodigoArea: TAutoIncField
      FieldName = 'CodigoArea'
      ReadOnly = True
    end
    object QueryAreasCodigoFazenda: TIntegerField
      FieldName = 'CodigoFazenda'
    end
    object QueryAreasNomeArea: TStringField
      FieldName = 'NomeArea'
      Size = 10
    end
    object QueryAreasAreaHA: TFloatField
      FieldName = 'AreaHA'
    end
    object QueryAreasLookup_fazendas: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_fazendas'
      LookupDataSet = QueryFazendas
      LookupKeyFields = 'CodigoFazenda'
      LookupResultField = 'NomeFazenda'
      KeyFields = 'CodigoFazenda'
      Size = 70
      Lookup = True
    end
  end
  object DataAreas: TDataSource
    DataSet = QueryAreas
    Left = 608
    Top = 120
  end
end
