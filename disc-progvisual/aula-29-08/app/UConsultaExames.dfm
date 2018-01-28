object FConsultaExames: TFConsultaExames
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta Exames'
  ClientHeight = 228
  ClientWidth = 431
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 132
    Width = 405
    Height = 76
    Caption = 'Campos de filtro'
    TabOrder = 0
    object btnSair: TSpeedButton
      Left = 320
      Top = 32
      Width = 73
      Height = 25
      Caption = 'Sair'
      OnClick = btnSairClick
    end
    object btnConsultar: TButton
      Left = 239
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 0
      OnClick = btnConsultarClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 6
    Width = 405
    Height = 123
    Caption = 'Dados da pesquisa'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 3
      Top = 16
      Width = 399
      Height = 104
      DataSource = DataExames
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
          FieldName = 'idTiposExame'
          Title.Caption = 'C'#243'digo'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 334
          Visible = True
        end>
    end
  end
  object CampoExames: TEdit
    Left = 28
    Top = 164
    Width = 197
    Height = 21
    TabOrder = 2
  end
  object QueryExames: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'exame'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from revisaolpv.tiposexames te'
      'where upper(te.descricao) like upper(:exame)')
    Left = 336
    Top = 32
    object QueryExamesidTiposExame: TAutoIncField
      FieldName = 'idTiposExame'
      ReadOnly = True
    end
    object QueryExamesDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
  object DataExames: TDataSource
    DataSet = QueryExames
    Left = 368
    Top = 32
  end
end
