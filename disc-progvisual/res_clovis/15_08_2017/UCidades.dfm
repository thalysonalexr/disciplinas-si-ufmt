object FCidades: TFCidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cidades'
  ClientHeight = 398
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 345
    Width = 504
    Height = 53
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object BtnInserir: TSpeedButton
      Left = 6
      Top = 8
      Width = 77
      Height = 39
      Caption = 'Inserir'
      OnClick = BtnInserirClick
    end
    object BtnEditar: TSpeedButton
      Left = 88
      Top = 8
      Width = 77
      Height = 39
      Caption = 'Editar'
      OnClick = BtnEditarClick
    end
    object BtnExcluir: TSpeedButton
      Left = 170
      Top = 8
      Width = 77
      Height = 39
      Caption = 'Excluir'
      OnClick = BtnExcluirClick
    end
    object BtnConfirmar: TSpeedButton
      Left = 252
      Top = 8
      Width = 77
      Height = 39
      Caption = 'Confirmar'
      Enabled = False
      OnClick = BtnConfirmarClick
    end
    object BtnCancelar: TSpeedButton
      Left = 334
      Top = 8
      Width = 77
      Height = 39
      Caption = 'Cancelar'
      Enabled = False
      OnClick = BtnCancelarClick
    end
    object BtnSair: TSpeedButton
      Left = 417
      Top = 8
      Width = 77
      Height = 39
      Caption = 'Sair'
      OnClick = BtnSairClick
    end
  end
  object GrupoDados: TGroupBox
    Left = 0
    Top = 276
    Width = 504
    Height = 69
    Align = alBottom
    Caption = ' Dados '
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBCodigo
    end
    object Label2: TLabel
      Left = 82
      Top = 14
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBNome
    end
    object Label3: TLabel
      Left = 393
      Top = 14
      Width = 22
      Height = 13
      Caption = 'Sigla'
      FocusControl = DBSigla
    end
    object DBCodigo: TDBEdit
      Left = 16
      Top = 28
      Width = 55
      Height = 21
      DataField = 'IDCidade'
      DataSource = DataCidades
      TabOrder = 0
    end
    object DBNome: TDBEdit
      Left = 82
      Top = 28
      Width = 300
      Height = 21
      DataField = 'Nome'
      DataSource = DataCidades
      TabOrder = 1
    end
    object DBSigla: TDBEdit
      Left = 393
      Top = 28
      Width = 36
      Height = 21
      DataField = 'Sigla'
      DataSource = DataCidades
      TabOrder = 2
    end
  end
  object DBGridAlunos: TDBGrid
    Left = 0
    Top = 0
    Width = 504
    Height = 205
    Align = alTop
    DataSource = DataCidades
    FixedColor = 12713983
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDCidade'
        Title.Caption = 'C'#243'digo'
        Title.Color = 8454016
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Caption = 'Nome da Cidade'
        Title.Color = 8454016
        Width = 340
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sigla'
        Title.Color = 8454016
        Width = 57
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 216
    Width = 504
    Height = 60
    Align = alBottom
    Caption = ' Consultas '
    TabOrder = 3
    object Label4: TLabel
      Left = 22
      Top = 14
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object SpeedButton1: TSpeedButton
      Left = 138
      Top = 15
      Width = 131
      Height = 37
      Caption = 'Consultar (Par'#226'metro)'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 338
      Top = 15
      Width = 131
      Height = 37
      Caption = 'Consultar (Din'#226'mica)'
      OnClick = SpeedButton2Click
    end
    object CampoNome: TEdit
      Left = 22
      Top = 28
      Width = 105
      Height = 21
      TabOrder = 0
    end
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.OracleLocal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nomecidade'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from lpv.cidades'
      'where upper(nome) like upper(:nomecidade)')
    Left = 78
    Top = 126
    object QueryCidadesIDCidade: TIntegerField
      FieldName = 'IDCidade'
    end
    object QueryCidadesNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object QueryCidadesSigla: TStringField
      FieldName = 'Sigla'
      Size = 2
    end
  end
  object DataCidades: TDataSource
    DataSet = QueryCidades
    Left = 180
    Top = 112
  end
end
