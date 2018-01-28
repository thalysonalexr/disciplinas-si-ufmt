object FConsultaPacientes: TFConsultaPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pacientes'
  ClientHeight = 440
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GrupoLista: TGroupBox
    Left = 0
    Top = 0
    Width = 920
    Height = 375
    Align = alTop
    Caption = ' Cidades Cadastradas '
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 916
      Height = 358
      Align = alClient
      DataSource = DataPacientes
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
          FieldName = 'idPaciente'
          Title.Caption = 'C'#243'digo'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomePaciente'
          Title.Caption = 'Nome'
          Width = 280
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nascimento'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomecidade'
          Title.Caption = 'Cidade'
          Width = 199
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Tipo de Conv'#234'nio'
          Width = 199
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 384
    Width = 920
    Height = 56
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object BConsultar: TSpeedButton
      Left = 467
      Top = 9
      Width = 102
      Height = 38
      Caption = 'Consultar'
      OnClick = BConsultarClick
    end
    object BSair: TSpeedButton
      Left = 655
      Top = 9
      Width = 102
      Height = 38
      Caption = 'Sair'
      OnClick = BSairClick
    end
    object Label1: TLabel
      Left = 10
      Top = 8
      Width = 97
      Height = 13
      Caption = 'Nome para Pesquisa'
    end
    object Label2: TLabel
      Left = 184
      Top = 8
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label3: TLabel
      Left = 305
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object CampoNome: TEdit
      Left = 10
      Top = 22
      Width = 129
      Height = 21
      TabOrder = 0
    end
    object DataInicial: TDateTimePicker
      Left = 184
      Top = 22
      Width = 105
      Height = 21
      Date = 42976.866964247680000000
      Time = 42976.866964247680000000
      ShowCheckbox = True
      Checked = False
      TabOrder = 1
    end
    object DataFinal: TDateTimePicker
      Left = 304
      Top = 22
      Width = 105
      Height = 21
      Date = 42976.866964247680000000
      Time = 42976.866964247680000000
      ShowCheckbox = True
      Checked = False
      TabOrder = 2
    end
  end
  object QueryPacientes: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select p.*,t.nome,c.nomecidade'
      'from pacientes p,tiposconvenios t, cidades c'
      'where c.idcidade=p.idcidade'
      'and p.idtiposconvenio=t.idtiposconvenio')
    Left = 364
    Top = 152
    object QueryPacientesidPaciente: TAutoIncField
      FieldName = 'idPaciente'
      ReadOnly = True
    end
    object QueryPacientesidTiposConvenio: TIntegerField
      FieldName = 'idTiposConvenio'
    end
    object QueryPacientesidCidade: TIntegerField
      FieldName = 'idCidade'
    end
    object QueryPacientesNomePaciente: TStringField
      FieldName = 'NomePaciente'
      Size = 45
    end
    object QueryPacientesNascimento: TDateField
      FieldName = 'Nascimento'
    end
    object QueryPacientesnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object QueryPacientesnomecidade: TStringField
      FieldName = 'nomecidade'
      Size = 60
    end
  end
  object DataPacientes: TDataSource
    DataSet = QueryPacientes
    Left = 176
    Top = 106
  end
end
