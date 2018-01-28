object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio Principal'
  ClientHeight = 176
  ClientWidth = 253
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ConnDBCidades: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;User I' +
      'D=root;Data Source=localMySQL;Initial Catalog=cidades'
    LoginPrompt = False
    Left = 24
    Top = 56
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object abelas1: TMenuItem
      Caption = 'Tabelas'
      object Cadastros: TMenuItem
        Caption = 'Cadastros'
        object Cidades1: TMenuItem
          Caption = 'Cidades'
          OnClick = Cidades1Click
        end
        object Estados1: TMenuItem
          Caption = 'Estados'
          OnClick = Estados1Click
        end
        object Paises1: TMenuItem
          Caption = 'Paises'
        end
      end
      object Consultas: TMenuItem
        Caption = 'Consultas'
        object Cidades2: TMenuItem
          Caption = 'Cidades'
        end
        object Estados2: TMenuItem
          Caption = 'Estados'
        end
        object Paises2: TMenuItem
          Caption = 'Paises'
        end
      end
    end
  end
end
