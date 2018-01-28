object FCidades: TFCidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cidades'
  ClientHeight = 369
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GrupoDados: TGroupBox
    Left = 0
    Top = 171
    Width = 475
    Height = 68
    Align = alTop
    Caption = ' Dados '
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 404
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Estado'
      FocusControl = DBEstado
    end
    object DBNome: TDBEdit
      Left = 8
      Top = 31
      Width = 378
      Height = 21
      DataField = 'NomeCidade'
      DataSource = DataCidades
      TabOrder = 0
    end
    object DBEstado: TDBEdit
      Left = 404
      Top = 31
      Width = 33
      Height = 21
      DataField = 'Estado'
      DataSource = DataCidades
      TabOrder = 1
    end
  end
  object GrupoLista: TGroupBox
    Left = 0
    Top = 0
    Width = 475
    Height = 171
    Align = alTop
    Caption = ' Cidades Cadastradas '
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 471
      Height = 154
      Align = alClient
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
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCidade'
          Title.Caption = 'Descri'#231#227'o'
          Width = 307
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estado'
          Width = 53
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 319
    Width = 475
    Height = 50
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitTop = 248
    object BInserir: TSpeedButton
      Left = 5
      Top = 7
      Width = 75
      Height = 38
      Caption = 'Inserir'
      OnClick = BInserirClick
    end
    object BAlterar: TSpeedButton
      Left = 83
      Top = 7
      Width = 75
      Height = 38
      Caption = 'Alterar'
      OnClick = BAlterarClick
    end
    object BExcluir: TSpeedButton
      Left = 161
      Top = 7
      Width = 75
      Height = 38
      Caption = 'Excluir'
      OnClick = BExcluirClick
    end
    object BConfirmar: TSpeedButton
      Left = 239
      Top = 7
      Width = 75
      Height = 38
      Caption = 'Confirmar'
      Enabled = False
      OnClick = BConfirmarClick
    end
    object BCancelar: TSpeedButton
      Left = 317
      Top = 7
      Width = 75
      Height = 38
      Caption = 'Cancelar'
      Enabled = False
      OnClick = BCancelarClick
    end
    object BSair: TSpeedButton
      Left = 395
      Top = 7
      Width = 75
      Height = 38
      Caption = 'Sair'
      OnClick = BSairClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 250
    Width = 475
    Height = 69
    Align = alBottom
    Caption = ' Consulta '
    TabOrder = 3
    object Label2: TLabel
      Left = 12
      Top = 18
      Width = 97
      Height = 13
      Caption = 'Nome para Pesquisa'
    end
    object BConsultar: TSpeedButton
      Left = 161
      Top = 21
      Width = 102
      Height = 38
      Caption = 'Consultar'
      OnClick = BConsultarClick
    end
    object CampoNome: TEdit
      Left = 12
      Top = 32
      Width = 129
      Height = 21
      TabOrder = 0
    end
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nome'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from cidades'
      'where nomecidade like :nome')
    Left = 372
    Top = 70
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
    Left = 178
    Top = 76
  end
end
