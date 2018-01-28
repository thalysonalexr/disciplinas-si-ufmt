object FTiposConvenios: TFTiposConvenios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tipos de Conv'#234'nios'
  ClientHeight = 298
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GrupoDados: TGroupBox
    Left = 0
    Top = 171
    Width = 475
    Height = 68
    Align = alTop
    Caption = ' Dados '
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 18
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBDescricao
    end
    object DBDescricao: TDBEdit
      Left = 12
      Top = 32
      Width = 394
      Height = 21
      DataField = 'Nome'
      DataSource = DataTipos
      TabOrder = 0
    end
  end
  object GrupoLista: TGroupBox
    Left = 0
    Top = 0
    Width = 475
    Height = 171
    Align = alTop
    Caption = ' Tipos Dispon'#237'veis '
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 471
      Height = 154
      Align = alClient
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
          FieldName = 'idTiposConvenio'
          Title.Caption = 'C'#243'digo'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Caption = 'Descri'#231#227'o'
          Width = 330
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 248
    Width = 475
    Height = 50
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object BInserir: TSpeedButton
      Left = 5
      Top = 7
      Width = 75
      Height = 38
      Caption = 'Inserir'
      OnClick = BInserirClick
    end
    object BAlterar: TSpeedButton
      Left = 83
      Top = 7
      Width = 75
      Height = 38
      Caption = 'Alterar'
      OnClick = BAlterarClick
    end
    object BExcluir: TSpeedButton
      Left = 161
      Top = 7
      Width = 75
      Height = 38
      Caption = 'Excluir'
      OnClick = BExcluirClick
    end
    object BConfirmar: TSpeedButton
      Left = 239
      Top = 7
      Width = 75
      Height = 38
      Caption = 'Confirmar'
      Enabled = False
      OnClick = BConfirmarClick
    end
    object BCancelar: TSpeedButton
      Left = 317
      Top = 7
      Width = 75
      Height = 38
      Caption = 'Cancelar'
      Enabled = False
      OnClick = BCancelarClick
    end
    object BSair: TSpeedButton
      Left = 395
      Top = 7
      Width = 75
      Height = 38
      Caption = 'Sair'
      OnClick = BSairClick
    end
  end
  object QueryTipos: TADOQuery
    Active = True
    Connection = FPrincipal.Conector
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tiposconvenios')
    Left = 372
    Top = 70
    object QueryTiposidTiposConvenio: TAutoIncField
      FieldName = 'idTiposConvenio'
      ReadOnly = True
    end
    object QueryTiposNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
  end
  object DataTipos: TDataSource
    DataSet = QueryTipos
    Left = 178
    Top = 76
  end
end
