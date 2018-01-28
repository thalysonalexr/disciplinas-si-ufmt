object FFazendas: TFFazendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fazendas'
  ClientHeight = 456
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
      DataSource = DataFazendas
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
          FieldName = 'CodigoFazenda'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoLocalizacao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 205
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeFazenda'
          Title.Caption = 'Fazenda'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeProprietario'
          Title.Caption = 'Propriet'#225'rio'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TipoPropriedade'
          Title.Caption = 'Tipo de Prop.'
          Width = 101
          Visible = True
        end>
    end
  end
  object GrupoDados: TGroupBox
    Left = 8
    Top = 164
    Width = 641
    Height = 189
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
      Width = 80
      Height = 14
      Caption = 'Nome Fazenda'
      FocusControl = DBNomeFazenda
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 93
      Height = 14
      Caption = 'Tipo Propriedade'
      FocusControl = DBPropriedade
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 114
      Height = 14
      Caption = 'Descricao Localizacao'
      FocusControl = DBLocalizacao
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 98
      Height = 14
      Caption = 'Nome Proprietario'
      FocusControl = DBNomeproprietario
    end
    object DBNomeFazenda: TDBEdit
      Left = 16
      Top = 36
      Width = 589
      Height = 22
      DataField = 'NomeFazenda'
      DataSource = DataFazendas
      TabOrder = 0
    end
    object DBPropriedade: TDBEdit
      Left = 16
      Top = 73
      Width = 90
      Height = 22
      DataField = 'TipoPropriedade'
      DataSource = DataFazendas
      TabOrder = 1
    end
    object DBLocalizacao: TDBEdit
      Left = 16
      Top = 116
      Width = 589
      Height = 22
      DataField = 'DescricaoLocalizacao'
      DataSource = DataFazendas
      TabOrder = 2
    end
    object DBNomeproprietario: TDBEdit
      Left = 16
      Top = 156
      Width = 589
      Height = 22
      DataField = 'NomeProprietario'
      DataSource = DataFazendas
      TabOrder = 3
    end
  end
  object GrupoOperacoes: TGroupBox
    Left = 8
    Top = 359
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
    Left = 528
    Top = 120
    object QueryFazendasCodigoFazenda: TAutoIncField
      FieldName = 'CodigoFazenda'
      ReadOnly = True
    end
    object QueryFazendasNomeFazenda: TStringField
      FieldName = 'NomeFazenda'
      Size = 70
    end
    object QueryFazendasTipoPropriedade: TStringField
      FieldName = 'TipoPropriedade'
      Size = 1
    end
    object QueryFazendasDescricaoLocalizacao: TStringField
      FieldName = 'DescricaoLocalizacao'
      Size = 255
    end
    object QueryFazendasNomeProprietario: TStringField
      FieldName = 'NomeProprietario'
      Size = 45
    end
  end
  object DataFazendas: TDataSource
    DataSet = QueryFazendas
    Left = 560
    Top = 120
  end
end
