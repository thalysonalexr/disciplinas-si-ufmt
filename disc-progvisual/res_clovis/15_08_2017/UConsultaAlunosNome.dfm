object FConsultaAlunosNome: TFConsultaAlunosNome
  Left = 0
  Top = 0
  Caption = 'FConsultaAlunosNome'
  ClientHeight = 335
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 62
    Top = 232
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object DBGrid1: TDBGrid
    Left = 14
    Top = 6
    Width = 373
    Height = 209
    DataSource = DataConsulta
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 274
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 220
    Top = 284
    Width = 125
    Height = 43
    Caption = 'Sair'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 58
    Top = 284
    Width = 125
    Height = 43
    Caption = 'Consultar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object CampoNome: TEdit
    Left = 62
    Top = 251
    Width = 105
    Height = 21
    TabOrder = 3
  end
  object QueryConsulta: TADOQuery
    Active = True
    Connection = FPrincipal.OracleLocal
    CursorType = ctStatic
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
    Left = 134
    Top = 152
  end
  object DataConsulta: TDataSource
    DataSet = QueryConsulta
    Left = 268
    Top = 160
  end
end
