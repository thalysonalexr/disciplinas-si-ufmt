object FMedicos: TFMedicos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro M'#233'dicos'
  ClientHeight = 312
  ClientWidth = 503
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
  object GrupoGrid: TGroupBox
    Left = 8
    Top = 8
    Width = 487
    Height = 161
    TabOrder = 0
    object DBGridMedicos: TDBGrid
      Left = 3
      Top = 9
      Width = 481
      Height = 149
      DataSource = DataMedicos
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
          FieldName = 'idMedico'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeMedico'
          Title.Caption = 'Nome m'#233'dico'
          Width = 272
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRM'
          Width = 136
          Visible = True
        end>
    end
  end
  object GrupoDados: TGroupBox
    Left = 8
    Top = 172
    Width = 487
    Height = 85
    Caption = 'Campos '#224' preencher'
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 14
      Top = 26
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBCampoNome
    end
    object Label2: TLabel
      Left = 307
      Top = 26
      Width = 22
      Height = 13
      Caption = 'CRM'
      FocusControl = DBCampoCRM
    end
    object DBCampoNome: TDBEdit
      Left = 14
      Top = 45
      Width = 267
      Height = 21
      DataField = 'NomeMedico'
      DataSource = DataMedicos
      TabOrder = 0
    end
    object DBCampoCRM: TDBEdit
      Left = 307
      Top = 45
      Width = 160
      Height = 21
      DataField = 'CRM'
      DataSource = DataMedicos
      TabOrder = 1
    end
  end
  object GrupoOperacoes: TGroupBox
    Left = 8
    Top = 255
    Width = 487
    Height = 50
    TabOrder = 2
    object btnInserir: TSpeedButton
      Left = 14
      Top = 13
      Width = 65
      Height = 30
      Caption = 'Inserir'
      OnClick = btnInserirClick
    end
    object btnAlterar: TSpeedButton
      Left = 85
      Top = 13
      Width = 65
      Height = 30
      Caption = 'Alterar'
      OnClick = btnAlterarClick
    end
    object btnExlcuir: TSpeedButton
      Left = 156
      Top = 13
      Width = 65
      Height = 30
      Caption = 'Excluir'
      OnClick = btnExlcuirClick
    end
    object btnConfirmar: TSpeedButton
      Left = 227
      Top = 13
      Width = 65
      Height = 30
      Caption = 'Confirmar'
      Enabled = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 298
      Top = 13
      Width = 65
      Height = 30
      Caption = 'Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
    end
    object btnSair: TSpeedButton
      Left = 403
      Top = 13
      Width = 65
      Height = 30
      Caption = 'Sair'
      OnClick = btnSairClick
    end
  end
  object QueryMedicos: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from revisaolpv.medicos')
    Left = 384
    Top = 40
    object QueryMedicosidMedico: TAutoIncField
      FieldName = 'idMedico'
      ReadOnly = True
    end
    object QueryMedicosNomeMedico: TStringField
      FieldName = 'NomeMedico'
      Size = 45
    end
    object QueryMedicosCRM: TStringField
      FieldName = 'CRM'
      Size = 12
    end
  end
  object DataMedicos: TDataSource
    DataSet = QueryMedicos
    Left = 344
    Top = 40
  end
end
