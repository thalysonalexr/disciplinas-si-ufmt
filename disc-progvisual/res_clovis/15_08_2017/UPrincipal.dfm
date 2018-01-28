object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'FPrincipal'
  ClientHeight = 396
  ClientWidth = 672
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
  object MainMenu1: TMainMenu
    Left = 74
    Top = 48
    object Exrccios1: TMenuItem
      Caption = 'Exerc'#237'cios'
      object Alunos1: TMenuItem
        Caption = 'Alunos'
        OnClick = Alunos1Click
      end
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        OnClick = Cidades1Click
      end
      object Vendedores1: TMenuItem
        Caption = 'Consultas'
        object Alunos2: TMenuItem
          Caption = 'Matricula'
          OnClick = Alunos2Click
        end
        object Nome1: TMenuItem
          Caption = 'Nome'
          OnClick = Nome1Click
        end
      end
    end
  end
  object OracleLocal: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=Local;Initial Catalog=lpv'
    LoginPrompt = False
    Left = 172
    Top = 58
  end
end
