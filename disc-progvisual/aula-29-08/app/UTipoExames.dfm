object FTiposExames: TFTiposExames
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tipos de Exames'
  ClientHeight = 337
  ClientWidth = 470
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
  object GrupoDados: TGroupBox
    Left = 8
    Top = 167
    Width = 453
    Height = 90
    Caption = 'Dados'
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBDescricao
    end
    object DBDescricao: TDBEdit
      Left = 16
      Top = 48
      Width = 394
      Height = 21
      DataField = 'Descricao'
      DataSource = DataTipos
      TabOrder = 0
    end
  end
  object GrupoLista: TGroupBox
    Left = 8
    Top = 8
    Width = 453
    Height = 153
    Caption = 'Tipos dispon'#237'veis'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 3
      Top = 16
      Width = 447
      Height = 120
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
          FieldName = 'idTiposExame'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 377
          Visible = True
        end>
    end
  end
  object TGroupBox
    Left = 8
    Top = 263
    Width = 453
    Height = 66
    TabOrder = 2
    object btnInserir: TSpeedButton
      Left = 16
      Top = 16
      Width = 68
      Height = 38
      Caption = 'Inserir'
      OnClick = btnInserirClick
    end
    object btnAlterar: TSpeedButton
      Left = 87
      Top = 16
      Width = 68
      Height = 38
      Caption = 'Alterar'
      OnClick = btnAlterarClick
    end
    object btnExcluir: TSpeedButton
      Left = 158
      Top = 15
      Width = 68
      Height = 38
      Caption = 'Excluir'
      OnClick = btnExcluirClick
    end
    object btnConfirmar: TSpeedButton
      Left = 229
      Top = 16
      Width = 68
      Height = 38
      Caption = 'Confirmar'
      Enabled = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 300
      Top = 16
      Width = 68
      Height = 38
      Caption = 'Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
    end
    object btnSair: TSpeedButton
      Left = 371
      Top = 16
      Width = 68
      Height = 38
      Caption = 'Sair'
      OnClick = btnSairClick
    end
  end
  object QueryTipos: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tiposexames')
    Left = 144
    Top = 80
    object QueryTiposidTiposExame: TAutoIncField
      FieldName = 'idTiposExame'
      ReadOnly = True
    end
    object QueryTiposDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
  object DataTipos: TDataSource
    DataSet = QueryTipos
    Left = 176
    Top = 80
  end
end
