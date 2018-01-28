object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'FPrincipal'
  ClientHeight = 391
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BDCidades: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=MysqlCidades;Initial Catalog=cidades'
    LoginPrompt = False
    Left = 52
    Top = 36
  end
  object MainMenu1: TMainMenu
    Left = 172
    Top = 50
    object abelas1: TMenuItem
      Caption = 'Tabelas'
      object Paises1: TMenuItem
        Caption = 'Paises'
      end
      object Estados1: TMenuItem
        Caption = 'Estados'
        OnClick = Estados1Click
      end
    end
  end
end
