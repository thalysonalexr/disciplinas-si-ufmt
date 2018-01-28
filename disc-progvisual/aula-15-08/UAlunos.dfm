object FAlunos: TFAlunos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Alunos'
  ClientHeight = 437
  ClientWidth = 781
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
  object DBGridAlunos: TDBGrid
    Left = 24
    Top = 16
    Width = 737
    Height = 169
    DataSource = DataAlunos
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
        FieldName = 'matricula'
        Title.Caption = 'N'#176' Matr'#237'cula'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome do Aluno'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CalcSexo'
        Title.Caption = 'Sexo'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CalcEstCivil'
        Title.Caption = 'Estado Civil'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupCidades'
        Title.Caption = 'Cidade'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 76
        Visible = True
      end>
  end
  object GrupoDados: TGroupBox
    Left = 24
    Top = 184
    Width = 737
    Height = 182
    Caption = 'Campos a serem preenchidos'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 87
      Height = 18
      Caption = 'Nome completo'
      FocusControl = DBNome
    end
    object Label3: TLabel
      Left = 448
      Top = 32
      Width = 37
      Height = 18
      Caption = 'Cidade'
      FocusControl = DBLookupCidades
    end
    object Label4: TLabel
      Left = 448
      Top = 91
      Width = 20
      Height = 18
      Caption = 'CPF'
      FocusControl = DBCPF
    end
    object DBNome: TDBEdit
      Left = 16
      Top = 56
      Width = 377
      Height = 26
      DataField = 'nome'
      DataSource = DataAlunos
      TabOrder = 0
    end
    object DBSexo: TDBRadioGroup
      Left = 16
      Top = 88
      Width = 105
      Height = 85
      Caption = 'Sexo'
      DataField = 'sexo'
      DataSource = DataAlunos
      Items.Strings = (
        'Masculino'
        'Feminino')
      ParentBackground = True
      TabOrder = 1
      Values.Strings = (
        'M'
        'F')
    end
    object DBEstadoCivil: TDBRadioGroup
      Left = 143
      Top = 88
      Width = 250
      Height = 85
      Caption = 'Estado Civil'
      Columns = 2
      DataField = 'estadoCivil'
      DataSource = DataAlunos
      Items.Strings = (
        'Solteiro(a)'
        'Casado(a)'
        'Divorciado(a)'
        'Vi'#250'vo(a)')
      ParentBackground = True
      TabOrder = 2
      Values.Strings = (
        '1'
        '2'
        '3'
        '4')
    end
    object DBLookupCidades: TDBLookupComboBox
      Left = 448
      Top = 56
      Width = 193
      Height = 26
      DataField = 'LookupCidades'
      DataSource = DataAlunos
      TabOrder = 3
    end
    object DBCPF: TDBEdit
      Left = 448
      Top = 115
      Width = 193
      Height = 26
      DataField = 'CPF'
      DataSource = DataAlunos
      TabOrder = 4
    end
  end
  object Operacoes: TGroupBox
    Left = 24
    Top = 363
    Width = 737
    Height = 58
    TabOrder = 2
    object btnInserir: TSpeedButton
      Left = 9
      Top = 12
      Width = 80
      Height = 40
      Caption = 'Inserir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnInserirClick
    end
    object btnEditar: TSpeedButton
      Left = 95
      Top = 12
      Width = 80
      Height = 40
      Caption = 'Editar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEditarClick
    end
    object btnExcluir: TSpeedButton
      Left = 181
      Top = 12
      Width = 80
      Height = 40
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnExcluirClick
    end
    object btnConfirmar: TSpeedButton
      Left = 267
      Top = 12
      Width = 80
      Height = 40
      Caption = 'Confirmar'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 353
      Top = 12
      Width = 80
      Height = 40
      Caption = 'Cancelar'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCancelarClick
    end
    object btnSair: TSpeedButton
      Left = 616
      Top = 9
      Width = 110
      Height = 46
      Caption = 'Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSairClick
    end
  end
  object QueryAlunos: TADOQuery
    Active = True
    Connection = FPrincipal.LolcalMysql
    CursorType = ctStatic
    OnCalcFields = QueryAlunosCalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from lpv.alunos;')
    Left = 360
    Top = 152
    object QueryAlunosmatricula: TIntegerField
      DisplayWidth = 11
      FieldName = 'matricula'
    end
    object QueryAlunosnome: TStringField
      DisplayWidth = 69
      FieldName = 'nome'
      Size = 40
    end
    object QueryAlunossexo: TStringField
      FieldName = 'sexo'
      Size = 1
    end
    object QueryAlunosestadoCivil: TIntegerField
      FieldName = 'estadoCivil'
    end
    object QueryAlunosidcidade: TIntegerField
      FieldName = 'idcidade'
    end
    object QueryAlunosLookupCidades: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupCidades'
      LookupDataSet = QueryCidades
      LookupKeyFields = 'IDCidade'
      LookupResultField = 'Nome'
      KeyFields = 'idcidade'
      Size = 50
      Lookup = True
    end
    object QueryAlunosCalcSexo: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalcSexo'
      Size = 10
      Calculated = True
    end
    object QueryAlunosCalcEstCivil: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalcEstCivil'
      Size = 15
      Calculated = True
    end
    object QueryAlunosCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
  end
  object DataAlunos: TDataSource
    DataSet = QueryAlunos
    Left = 424
    Top = 152
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.LolcalMysql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades;')
    Left = 392
    Top = 152
    object QueryCidadesIDCidade: TIntegerField
      DisplayWidth = 12
      FieldName = 'IDCidade'
    end
    object QueryCidadesNome: TStringField
      DisplayWidth = 41
      FieldName = 'Nome'
      Size = 50
    end
    object QueryCidadesSigla: TStringField
      DisplayWidth = 7
      FieldName = 'Sigla'
      Size = 2
    end
  end
end
