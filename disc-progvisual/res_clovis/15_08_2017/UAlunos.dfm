object FAlunos: TFAlunos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Alunos'
  ClientHeight = 390
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridAlunos: TDBGrid
    Left = 12
    Top = 4
    Width = 587
    Height = 175
    DataSource = DataAlunos
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
        FieldName = 'Matricula'
        Title.Caption = 'Matr'#237'cula'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Caption = 'Nome do Aluno'
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupCidades'
        Title.Caption = 'Cidade'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calcSexo'
        Title.Caption = 'Sexo'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calcCivil'
        Title.Caption = 'Estado Civil'
        Width = 74
        Visible = True
      end>
  end
  object GrupoDados: TGroupBox
    Left = 12
    Top = 192
    Width = 587
    Height = 135
    Caption = ' Dados '
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 43
      Height = 13
      Caption = 'Matricula'
      FocusControl = DBMatricula
    end
    object Label2: TLabel
      Left = 98
      Top = 20
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBNome
    end
    object Label3: TLabel
      Left = 214
      Top = 70
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBLookupComboBox1
    end
    object DBMatricula: TDBEdit
      Left = 8
      Top = 34
      Width = 63
      Height = 21
      DataField = 'Matricula'
      DataSource = DataAlunos
      TabOrder = 0
    end
    object DBNome: TDBEdit
      Left = 98
      Top = 34
      Width = 300
      Height = 21
      DataField = 'Nome'
      DataSource = DataAlunos
      TabOrder = 1
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 410
      Top = 18
      Width = 145
      Height = 43
      Caption = ' Sexo '
      Columns = 2
      DataField = 'Sexo'
      DataSource = DataAlunos
      Items.Strings = (
        'Masculino'
        'Feminino')
      ParentBackground = True
      TabOrder = 2
      Values.Strings = (
        'M'
        'F')
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 8
      Top = 61
      Width = 185
      Height = 53
      Caption = ' Estado Civil '
      Columns = 2
      DataField = 'EstadoCivil'
      DataSource = DataAlunos
      Items.Strings = (
        'Solteiro'
        'Casado'
        'Divorciado'
        'Vi'#250'vo')
      ParentBackground = True
      TabOrder = 3
      Values.Strings = (
        '1'
        '2'
        '3'
        '4')
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 214
      Top = 84
      Width = 184
      Height = 21
      DataField = 'LookupCidades'
      DataSource = DataAlunos
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 337
    Width = 606
    Height = 53
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitWidth = 499
    object BtnInserir: TSpeedButton
      Left = 9
      Top = 8
      Width = 77
      Height = 39
      Caption = 'Inserir'
      OnClick = BtnInserirClick
    end
    object BtnEditar: TSpeedButton
      Left = 111
      Top = 8
      Width = 77
      Height = 39
      Caption = 'Editar'
      OnClick = BtnEditarClick
    end
    object BtnExcluir: TSpeedButton
      Left = 214
      Top = 8
      Width = 77
      Height = 39
      Caption = 'Excluir'
      OnClick = BtnExcluirClick
    end
    object BtnConfirmar: TSpeedButton
      Left = 316
      Top = 8
      Width = 77
      Height = 39
      Caption = 'Confirmar'
      Enabled = False
      OnClick = BtnConfirmarClick
    end
    object BtnCancelar: TSpeedButton
      Left = 419
      Top = 8
      Width = 77
      Height = 39
      Caption = 'Cancelar'
      Enabled = False
      OnClick = BtnCancelarClick
    end
    object BtnSair: TSpeedButton
      Left = 522
      Top = 8
      Width = 77
      Height = 39
      Caption = 'Sair'
      OnClick = BtnSairClick
    end
  end
  object QueryAlunos: TADOQuery
    Active = True
    Connection = FPrincipal.OracleLocal
    CursorType = ctStatic
    OnCalcFields = QueryAlunosCalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from lpv.alunos')
    Left = 154
    Top = 94
    object QueryAlunosMatricula: TIntegerField
      DisplayWidth = 17
      FieldName = 'Matricula'
    end
    object QueryAlunosNome: TStringField
      DisplayWidth = 48
      FieldName = 'Nome'
      Size = 40
    end
    object QueryAlunosSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object QueryAlunosEstadoCivil: TIntegerField
      FieldName = 'EstadoCivil'
    end
    object QueryAlunosIDCidade: TIntegerField
      FieldName = 'IDCidade'
    end
    object QueryAlunosLookupCidades: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupCidades'
      LookupDataSet = QueryCidades
      LookupKeyFields = 'IDCidade'
      LookupResultField = 'Nome'
      KeyFields = 'IDCidade'
      Size = 40
      Lookup = True
    end
    object QueryAlunoscalcSexo: TStringField
      FieldKind = fkCalculated
      FieldName = 'calcSexo'
      Calculated = True
    end
    object QueryAlunoscalcCivil: TStringField
      FieldKind = fkCalculated
      FieldName = 'calcCivil'
      Calculated = True
    end
  end
  object DataAlunos: TDataSource
    DataSet = QueryAlunos
    Left = 362
    Top = 122
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.OracleLocal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from lpv.cidades')
    Left = 250
    Top = 122
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
end
