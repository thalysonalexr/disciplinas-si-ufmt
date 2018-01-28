object FConsultaCidades: TFConsultaCidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Cidades'
  ClientHeight = 300
  ClientWidth = 454
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
  object DBGrid1: TDBGrid
    Left = 11
    Top = 16
    Width = 433
    Height = 192
    DataSource = DataConsulta
    FixedColor = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Trebuchet MS'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idCidade'
        Title.Caption = 'C'#243'digo'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 325
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sigla'
        Title.Caption = 'UF'
        Width = 52
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 11
    Top = 202
    Width = 433
    Height = 79
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 12
      Width = 79
      Height = 16
      Caption = 'Nome da Cidade'
    end
    object CampoNomeCidade: TEdit
      Left = 13
      Top = 31
      Width = 196
      Height = 24
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 231
      Top = 5
      Width = 199
      Height = 70
      TabOrder = 1
      object Button1: TButton
        Left = 16
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Consultar'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 113
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
    end
  end
  object QueryConsultar: TADOQuery
    Connection = FPrincipal.LolcalMysql
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nomecidade'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from cidades'
      'where upper(nome) like upper(:nomecidade)')
    Left = 344
    Top = 16
    object QueryConsultaridCidade: TAutoIncField
      FieldName = 'idCidade'
      ReadOnly = True
    end
    object QueryConsultarNome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object QueryConsultarSigla: TStringField
      FieldName = 'Sigla'
      Size = 2
    end
  end
  object DataConsulta: TDataSource
    DataSet = QueryConsultar
    Left = 376
    Top = 16
  end
end
