object FOrdensServ: TFOrdensServ
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Ordens de Servi'#231'o'
  ClientHeight = 390
  ClientWidth = 712
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
    Width = 696
    Height = 153
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGridAreaPlantio: TDBGrid
      Left = 3
      Top = 16
      Width = 690
      Height = 134
      DataSource = DataEqUtil
      FixedColor = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CodigoOrdem'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lookup_Resp'
          Title.Caption = 'T'#233'cnico Respons'#225'vel'
          Width = 231
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lookup_Areas'
          Title.Caption = #193'rea'
          Width = 197
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'calc_data'
          Title.Caption = 'Data'
          Width = 185
          Visible = True
        end>
    end
  end
  object GrupoDados: TGroupBox
    Left = 8
    Top = 167
    Width = 696
    Height = 122
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
      Top = 26
      Width = 84
      Height = 13
      Caption = 'Data da ordem'
      FocusControl = DBData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 63
      Width = 115
      Height = 13
      Caption = 'T'#233'cnico respons'#225'vel'
      FocusControl = DBLookupResp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 218
      Top = 26
      Width = 27
      Height = 13
      Caption = #193'rea'
      FocusControl = DBLookupArea
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBData: TDBEdit
      Left = 16
      Top = 42
      Width = 134
      Height = 21
      DataField = 'DataOrdem'
      DataSource = DataEqUtil
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupResp: TDBLookupComboBox
      Left = 16
      Top = 83
      Width = 599
      Height = 21
      DataField = 'Lookup_Resp'
      DataSource = DataEqUtil
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupArea: TDBLookupComboBox
      Left = 217
      Top = 42
      Width = 144
      Height = 21
      DataField = 'Lookup_Areas'
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
    Top = 295
    Width = 696
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
      Left = 581
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
  object QueryResponsaveis: TADOQuery
    Active = True
    Connection = FPrincipal.ConexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aval3.responsaveistecnicos')
    Left = 544
    Top = 120
  end
  object DataEqUtil: TDataSource
    DataSet = QueryOrdensServ
    Left = 608
    Top = 120
  end
  object QueryOrdensServ: TADOQuery
    Active = True
    Connection = FPrincipal.ConexaoBanco
    CursorType = ctStatic
    OnCalcFields = QueryOrdensServCalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from aval3.ordensservicos')
    Left = 512
    Top = 120
    object QueryOrdensServCodigoOrdem: TAutoIncField
      FieldName = 'CodigoOrdem'
      ReadOnly = True
    end
    object QueryOrdensServCodigoTecnico: TIntegerField
      FieldName = 'CodigoTecnico'
    end
    object QueryOrdensServCodigoArea: TIntegerField
      FieldName = 'CodigoArea'
    end
    object QueryOrdensServDataOrdem: TDateField
      FieldName = 'DataOrdem'
    end
    object QueryOrdensServLookup_Resp: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_Resp'
      LookupDataSet = QueryResponsaveis
      LookupKeyFields = 'CodigoTecnico'
      LookupResultField = 'NomeTecnico'
      KeyFields = 'CodigoTecnico'
      Size = 45
      Lookup = True
    end
    object QueryOrdensServLookup_Areas: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup_Areas'
      LookupDataSet = QueryAreas
      LookupKeyFields = 'CodigoArea'
      LookupResultField = 'NomeArea'
      KeyFields = 'CodigoArea'
      Size = 10
      Lookup = True
    end
    object QueryOrdensServcalc_data: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_data'
      Size = 25
      Calculated = True
    end
  end
end
