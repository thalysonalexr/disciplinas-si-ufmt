object FEstados: TFEstados
  Left = 0
  Top = 0
  Caption = 'FEstados'
  ClientHeight = 315
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 12
    Top = 4
    Width = 505
    Height = 161
    DataSource = DataEstados
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
        FieldName = 'Nome'
        Width = 261
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sigla'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'look_Paises'
        Title.Caption = 'Pa'#237's'
        Width = 169
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 180
    Width = 506
    Height = 73
    Caption = ' Dados '
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 252
      Top = 20
      Width = 22
      Height = 13
      Caption = 'Sigla'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 300
      Top = 22
      Width = 19
      Height = 13
      Caption = 'Pa'#237's'
      FocusControl = DBLookupComboBox1
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 34
      Width = 217
      Height = 21
      DataField = 'Nome'
      DataSource = DataEstados
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 252
      Top = 34
      Width = 30
      Height = 21
      DataField = 'Sigla'
      DataSource = DataEstados
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 300
      Top = 36
      Width = 200
      Height = 21
      DataField = 'look_Paises'
      DataSource = DataEstados
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 262
    Width = 526
    Height = 53
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitTop = 289
    object SpeedButton1: TSpeedButton
      Left = 7
      Top = 8
      Width = 79
      Height = 41
      Caption = 'Inserir'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 94
      Top = 12
      Width = 23
      Height = 1
    end
    object SpeedButton3: TSpeedButton
      Left = 94
      Top = 8
      Width = 79
      Height = 41
      Caption = 'Alterar'
    end
    object SpeedButton4: TSpeedButton
      Left = 181
      Top = 8
      Width = 79
      Height = 41
      Caption = 'Excluir'
    end
    object SpeedButton5: TSpeedButton
      Left = 268
      Top = 8
      Width = 79
      Height = 41
      Caption = 'Confirmar'
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 355
      Top = 8
      Width = 79
      Height = 41
      Caption = 'Cancelar'
    end
    object SpeedButton7: TSpeedButton
      Left = 442
      Top = 8
      Width = 79
      Height = 41
      Caption = 'Sair'
    end
  end
  object QEstados: TADOQuery
    Active = True
    Connection = FPrincipal.BDCidades
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from estados')
    Left = 118
    Top = 106
    object QEstadosidEstado: TAutoIncField
      FieldName = 'idEstado'
      ReadOnly = True
    end
    object QEstadosidPais: TIntegerField
      FieldName = 'idPais'
    end
    object QEstadosNome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object QEstadosSigla: TStringField
      FieldName = 'Sigla'
      Size = 2
    end
    object QEstadoslook_Paises: TStringField
      FieldKind = fkLookup
      FieldName = 'look_Paises'
      LookupDataSet = QPaises
      LookupKeyFields = 'idPais'
      LookupResultField = 'NomePais'
      KeyFields = 'idPais'
      Size = 45
      Lookup = True
    end
  end
  object QPaises: TADOQuery
    Active = True
    Connection = FPrincipal.BDCidades
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from paises')
    Left = 306
    Top = 110
    object QPaisesidPais: TAutoIncField
      FieldName = 'idPais'
      ReadOnly = True
    end
    object QPaisesNomePais: TStringField
      FieldName = 'NomePais'
      Size = 45
    end
  end
  object DataEstados: TDataSource
    DataSet = QEstados
    Left = 206
    Top = 102
  end
end
