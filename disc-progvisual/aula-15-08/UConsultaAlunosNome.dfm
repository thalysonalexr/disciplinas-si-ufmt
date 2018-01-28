object FConsultaAlunosNome: TFConsultaAlunosNome
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta Alunos '
  ClientHeight = 305
  ClientWidth = 814
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
    Left = 24
    Top = 16
    Width = 777
    Height = 177
    DataSource = DataConsulta
    FixedColor = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
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
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Caption = 'Nome do Aluno'
        Width = 232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calcSexo'
        Title.Caption = 'Sexo'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calcEstCivil'
        Title.Caption = 'Estado Civil'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupCidades'
        Title.Caption = 'Cidade'
        Width = 115
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
        Width = 139
        Visible = True
      end>
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 199
    Width = 777
    Height = 81
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 83
      Height = 18
      Caption = 'Nome do Aluno'
    end
    object GroupBox1: TGroupBox
      Left = 440
      Top = 16
      Width = 318
      Height = 57
      TabOrder = 0
      object Button1: TButton
        Left = 11
        Top = 18
        Width = 97
        Height = 28
        Caption = 'Consultar'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 210
        Top = 18
        Width = 97
        Height = 28
        Caption = 'Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object CampoNome: TEdit
      Left = 16
      Top = 31
      Width = 377
      Height = 26
      TabOrder = 1
    end
  end
  object DataConsulta: TDataSource
    DataSet = QueryConsultar
    Left = 32
    Top = 112
  end
  object QueryConsultar: TADOQuery
    Connection = FPrincipal.LolcalMysql
    CursorType = ctStatic
    OnCalcFields = QueryConsultarCalcFields
    Parameters = <
      item
        Name = 'nome'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from alunos'
      'where upper(nome) like upper(:nome)')
    Left = 32
    Top = 152
    object QueryConsultarMatricula: TAutoIncField
      FieldName = 'Matricula'
      ReadOnly = True
    end
    object QueryConsultarNome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object QueryConsultarSexo: TStringField
      FieldName = 'Sexo'
      Size = 2
    end
    object QueryConsultarEstadoCivil: TIntegerField
      FieldName = 'EstadoCivil'
    end
    object QueryConsultarCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object QueryConsultaridCidade: TIntegerField
      FieldName = 'idCidade'
    end
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
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.LolcalMysql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from lpv.cidades')
    Left = 72
    Top = 152
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
