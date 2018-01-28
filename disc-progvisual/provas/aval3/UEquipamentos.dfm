object FEquipamentos: TFEquipamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Equipamentos'
  ClientHeight = 384
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
          FieldName = 'CodigoEq'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoEq'
          Title.Caption = 'Descri'#231#227'o'
          Width = 419
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TipoEquipamento'
          Title.Caption = 'Tipo Equipamento'
          Width = 161
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
      Top = 20
      Width = 51
      Height = 14
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 60
      Width = 100
      Height = 14
      Caption = 'Tipo Equipamento'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 394
      Height = 22
      DataField = 'DescricaoEq'
      DataSource = DataEqUtil
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 80
      Width = 100
      Height = 22
      DataField = 'TipoEquipamento'
      DataSource = DataEqUtil
      TabOrder = 1
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
  object DataEqUtil: TDataSource
    DataSet = QueryEquip
    Left = 608
    Top = 120
  end
  object QueryEquip: TADOQuery
    Active = True
    Connection = FPrincipal.ConexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aval3.equipamentos')
    Left = 576
    Top = 120
    object QueryEquipCodigoEq: TAutoIncField
      FieldName = 'CodigoEq'
      ReadOnly = True
    end
    object QueryEquipDescricaoEq: TStringField
      FieldName = 'DescricaoEq'
      Size = 30
    end
    object QueryEquipTipoEquipamento: TStringField
      FieldName = 'TipoEquipamento'
      Size = 1
    end
  end
end
