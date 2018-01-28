object FConsultaPacientes: TFConsultaPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta Pacientes'
  ClientHeight = 345
  ClientWidth = 680
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
    Width = 657
    Height = 233
    Caption = 'Tipos dispon'#237'veis'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 3
      Top = 22
      Width = 651
      Height = 203
      DataSource = DataTipos
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
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomePaciente'
          Title.Caption = 'Nome do Paciente'
          Width = 202
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nascimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'look_convenios'
          Title.Caption = 'Conv'#234'nio'
          Width = 171
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'look_cidades'
          Title.Caption = 'Cidade'
          Width = 155
          Visible = True
        end>
    end
  end
  object GrupoPesquisa: TGroupBox
    Left = 8
    Top = 239
    Width = 654
    Height = 90
    Caption = 'Campos de Filtragem'
    TabOrder = 1
    object Label1: TLabel
      Left = 208
      Top = 29
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 319
      Top = 29
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object Label3: TLabel
      Left = 16
      Top = 29
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object SpeedButton1: TSpeedButton
      Left = 544
      Top = 30
      Width = 97
      Height = 41
      Caption = 'Sair'
      OnClick = SpeedButton1Click
    end
    object CampoNome: TEdit
      Left = 16
      Top = 48
      Width = 177
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 440
      Top = 30
      Width = 98
      Height = 41
      Caption = 'Consultar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DataInicial: TDateTimePicker
      Left = 208
      Top = 48
      Width = 108
      Height = 21
      Date = 42976.910840810180000000
      Time = 42976.910840810180000000
      ShowCheckbox = True
      Checked = False
      TabOrder = 2
    end
    object DataFinal: TDateTimePicker
      Left = 319
      Top = 48
      Width = 108
      Height = 21
      Date = 42976.910840810180000000
      Time = 42976.910840810180000000
      ShowCheckbox = True
      Checked = False
      TabOrder = 3
    end
  end
  object QueryPacientes: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pacientes')
    Left = 464
    Top = 168
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
    object QueryPacienteslook_convenios: TStringField
      FieldKind = fkLookup
      FieldName = 'look_convenios'
      LookupDataSet = QueryTipos
      LookupKeyFields = 'idTiposConvenio'
      LookupResultField = 'Nome'
      KeyFields = 'idTiposConvenio'
      Size = 60
      Lookup = True
    end
    object QueryPacienteslook_cidades: TStringField
      FieldKind = fkLookup
      FieldName = 'look_cidades'
      LookupDataSet = QueryCidades
      LookupKeyFields = 'idCidade'
      LookupResultField = 'NomeCidade'
      KeyFields = 'idCidade'
      Size = 60
      Lookup = True
    end
  end
  object DataTipos: TDataSource
    DataSet = QueryPacientes
    Left = 368
    Top = 168
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades')
    Left = 432
    Top = 168
  end
  object QueryTipos: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tiposconvenios')
    Left = 400
    Top = 168
  end
end
