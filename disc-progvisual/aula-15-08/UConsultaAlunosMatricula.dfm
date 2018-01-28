object FConsultaAlunosMatricula: TFConsultaAlunosMatricula
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Alunos'
  ClientHeight = 168
  ClientWidth = 765
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
    Left = 8
    Top = 24
    Width = 737
    Height = 41
    DataSource = DataConsulta
    FixedColor = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'Matricula'
        Title.Caption = 'N'#176' Matr'#237'cula'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Caption = 'Nome do Aluno'
        Width = 227
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calcSexo'
        Title.Caption = 'Sexo'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calcEstCivil'
        Title.Caption = 'Estado Civil'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupCidades'
        Title.Caption = 'Cidade'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupEstados'
        Title.Caption = 'UF'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 122
        Visible = True
      end>
  end
  object Campos: TGroupBox
    Left = 24
    Top = 71
    Width = 721
    Height = 82
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 19
      Top = 12
      Width = 111
      Height = 18
      Caption = 'C'#243'digo de Matr'#237'cula'
    end
    object CampoMatricula: TEdit
      Left = 16
      Top = 31
      Width = 121
      Height = 26
      TabOrder = 0
    end
    object Operacoes: TGroupBox
      Left = 285
      Top = 13
      Width = 425
      Height = 57
      TabOrder = 1
      object Button1: TButton
        Left = 27
        Top = 16
        Width = 92
        Height = 30
        Caption = 'Consultar'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 309
        Top = 16
        Width = 90
        Height = 30
        Caption = 'Sair'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
  end
  object QueryConsultar: TADOQuery
    Active = True
    Connection = FPrincipal.LolcalMysql
    CursorType = ctStatic
    OnCalcFields = QueryConsultarCalcFields
    Parameters = <
      item
        Name = 'mat'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 88
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'select * from alunos'
      'where matricula=:mat')
    Left = 80
    Top = 8
    object QueryConsultarcalcSexo: TStringField
      FieldKind = fkCalculated
      FieldName = 'calcSexo'
      Size = 10
      Calculated = True
    end
    object QueryConsultarcalcEstCivil: TStringField
      FieldKind = fkCalculated
      FieldName = 'calcEstCivil'
      Size = 15
      Calculated = True
    end
    object QueryConsultarSexo: TStringField
      FieldName = 'Sexo'
      Size = 2
    end
    object QueryConsultarEstadoCivil: TIntegerField
      FieldName = 'EstadoCivil'
    end
    object QueryConsultarMatricula: TAutoIncField
      FieldName = 'Matricula'
      ReadOnly = True
    end
    object QueryConsultarNome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object QueryConsultarCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object QueryConsultaridCidade: TIntegerField
      FieldName = 'idCidade'
    end
    object QueryConsultarLookupCidades: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupCidades'
      LookupDataSet = QueryCidades
      LookupKeyFields = 'idCidade'
      LookupResultField = 'Nome'
      KeyFields = 'idCidade'
      Size = 45
      Lookup = True
    end
    object QueryConsultarLookupEstados: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupEstados'
      LookupDataSet = QueryCidades
      LookupKeyFields = 'idCidade'
      LookupResultField = 'Sigla'
      KeyFields = 'idCidade'
      Size = 2
      Lookup = True
    end
  end
  object DataConsulta: TDataSource
    DataSet = QueryConsultar
    Left = 40
    Top = 8
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.LolcalMysql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from lpv.cidades')
    Left = 120
    Top = 8
    object QueryCidadesidCidade: TAutoIncField
      FieldName = 'idCidade'
      ReadOnly = True
    end
    object QueryCidadesNome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object QueryCidadesSigla: TStringField
      FieldName = 'Sigla'
      Size = 2
    end
  end
end
