object FConsultas: TFConsultas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consultar'
  ClientHeight = 576
  ClientWidth = 570
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
  object SpeedButton1: TSpeedButton
    Left = 176
    Top = 527
    Width = 233
    Height = 41
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 554
    Height = 249
    Caption = 'Consultar Equipamentos'
    TabOrder = 0
    object DBGridEquipamentos: TDBGrid
      Left = 3
      Top = 12
      Width = 547
      Height = 145
      DataSource = DataEquipamentos
      FixedColor = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CodigoEq'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoEq'
          Title.Caption = 'Descri'#231#227'o'
          Width = 426
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TipoEquipamento'
          Title.Caption = 'Tipo'
          Width = 54
          Visible = True
        end>
    end
    object GroupBox3: TGroupBox
      Left = 3
      Top = 163
      Width = 547
      Height = 78
      Caption = 'Campos de filtro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 19
        Width = 57
        Height = 14
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CampoDescEquipamentos: TEdit
        Left = 16
        Top = 37
        Width = 329
        Height = 22
        TabOrder = 0
      end
      object btnConsultarEquip: TButton
        Left = 388
        Top = 25
        Width = 129
        Height = 40
        Caption = 'Consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btnConsultarEquipClick
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 263
    Width = 554
    Height = 258
    Caption = 'Consultar Ordens de Servi'#231'os'
    TabOrder = 1
    object DBGridOrdens: TDBGrid
      Left = 4
      Top = 20
      Width = 547
      Height = 145
      DataSource = DataOrdens
      FixedColor = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CodigoOrdem'
          Title.Caption = 'C'#243'digo'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nometecnico'
          Title.Caption = 'T'#233'cnico respons'#225'vel'
          Width = 254
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomearea'
          Title.Caption = #193'rea'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'calc_data'
          Title.Caption = 'Data'
          Width = 166
          Visible = True
        end>
    end
    object GroupBox4: TGroupBox
      Left = 3
      Top = 163
      Width = 547
      Height = 86
      Caption = 'Campos de filtro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Top = 19
        Width = 66
        Height = 14
        Caption = 'Data inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 176
        Top = 19
        Width = 59
        Height = 14
        Caption = 'Data final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnConsultarOrd: TButton
        Left = 388
        Top = 21
        Width = 129
        Height = 40
        Caption = 'Consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnConsultarOrdClick
      end
      object DataInicial: TDateTimePicker
        Left = 16
        Top = 38
        Width = 115
        Height = 22
        Date = 42983.871036064820000000
        Time = 42983.871036064820000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 1
      end
      object DataFinal: TDateTimePicker
        Left = 176
        Top = 38
        Width = 115
        Height = 22
        Date = 42983.871117060180000000
        Time = 42983.871117060180000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 2
      end
    end
  end
  object QueryEquipamentos: TADOQuery
    Active = True
    Connection = FPrincipal.ConexaoBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'descricao'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from aval3.equipamentos eq'
      'where upper(eq.descricaoeq) like upper(:descricao)')
    Left = 464
    Top = 136
    object QueryEquipamentosCodigoEq: TAutoIncField
      FieldName = 'CodigoEq'
      ReadOnly = True
    end
    object QueryEquipamentosDescricaoEq: TStringField
      FieldName = 'DescricaoEq'
      Size = 30
    end
    object QueryEquipamentosTipoEquipamento: TStringField
      FieldName = 'TipoEquipamento'
      Size = 1
    end
  end
  object DataEquipamentos: TDataSource
    DataSet = QueryEquipamentos
    Left = 504
    Top = 136
  end
  object QueryOrdensServ: TADOQuery
    Active = True
    Connection = FPrincipal.ConexaoBanco
    CursorType = ctStatic
    OnCalcFields = QueryOrdensServCalcFields
    Parameters = <>
    SQL.Strings = (
      'select o.*, r.nometecnico, a.nomearea'
      'from ordensservicos o, responsaveistecnicos r, areasplantios a'
      'where o.codigotecnico=r.codigotecnico'
      'and o.codigoarea=a.codigoarea')
    Left = 424
    Top = 344
    object QueryOrdensServCodigoOrdem: TAutoIncField
      FieldName = 'CodigoOrdem'
      ReadOnly = True
    end
    object QueryOrdensServCodigoTecnico: TIntegerField
      FieldName = 'CodigoTecnico'
    end
    object QueryOrdensServCodigoArea: TIntegerField
      FieldName = 'CodigoArea'
    end
    object QueryOrdensServDataOrdem: TDateField
      FieldName = 'DataOrdem'
    end
    object QueryOrdensServnometecnico: TStringField
      FieldName = 'nometecnico'
      Size = 45
    end
    object QueryOrdensServnomearea: TStringField
      FieldName = 'nomearea'
      Size = 10
    end
    object QueryOrdensServcalc_data: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_data'
      Size = 25
      Calculated = True
    end
  end
  object DataOrdens: TDataSource
    DataSet = QueryOrdensServ
    Left = 456
    Top = 344
  end
end
