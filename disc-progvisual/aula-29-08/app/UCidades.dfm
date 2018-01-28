object FCidades: TFCidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cidades'
  ClientHeight = 337
  ClientWidth = 471
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
    Top = 167
    Width = 453
    Height = 90
    Caption = 'Dados'
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 78
      Height = 13
      Caption = 'Nome da Cidade'
      FocusControl = DBDescricao
    end
    object Label2: TLabel
      Left = 352
      Top = 32
      Width = 33
      Height = 13
      Caption = 'Estado'
      FocusControl = DBEdit1
    end
    object DBDescricao: TDBEdit
      Left = 16
      Top = 51
      Width = 305
      Height = 21
      DataField = 'NomeCidade'
      DataSource = DataCidades
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 352
      Top = 48
      Width = 57
      Height = 21
      DataField = 'Estado'
      DataSource = DataCidades
      TabOrder = 1
    end
  end
  object GrupoLista: TGroupBox
    Left = 8
    Top = 8
    Width = 453
    Height = 153
    Caption = 'Tipos dispon'#237'veis'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 3
      Top = 16
      Width = 447
      Height = 120
      DataSource = DataCidades
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
          FieldName = 'idCidade'
          Title.Caption = 'C'#243'digo'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCidade'
          Title.Caption = 'Nome'
          Width = 329
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estado'
          Width = 44
          Visible = True
        end>
    end
  end
  object TGroupBox
    Left = 8
    Top = 263
    Width = 453
    Height = 66
    TabOrder = 2
    object btnInserir: TSpeedButton
      Left = 16
      Top = 16
      Width = 68
      Height = 38
      Caption = 'Inserir'
      OnClick = btnInserirClick
    end
    object btnAlterar: TSpeedButton
      Left = 87
      Top = 16
      Width = 68
      Height = 38
      Caption = 'Alterar'
      OnClick = btnAlterarClick
    end
    object btnExcluir: TSpeedButton
      Left = 158
      Top = 15
      Width = 68
      Height = 38
      Caption = 'Excluir'
      OnClick = btnExcluirClick
    end
    object btnConfirmar: TSpeedButton
      Left = 229
      Top = 16
      Width = 68
      Height = 38
      Caption = 'Confirmar'
      Enabled = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 300
      Top = 16
      Width = 68
      Height = 38
      Caption = 'Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
    end
    object btnSair: TSpeedButton
      Left = 371
      Top = 16
      Width = 68
      Height = 38
      Caption = 'Sair'
      OnClick = btnSairClick
    end
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades')
    Left = 112
    Top = 80
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
  object DataCidades: TDataSource
    DataSet = QueryCidades
    Left = 176
    Top = 80
  end
end
