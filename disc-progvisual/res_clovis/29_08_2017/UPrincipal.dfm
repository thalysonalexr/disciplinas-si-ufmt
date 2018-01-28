object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Revis'#227'o'
  ClientHeight = 367
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MenuPrincipal
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MenuPrincipal: TMainMenu
    Left = 56
    Top = 21
    object abelas1: TMenuItem
      Caption = 'Tabelas'
      object iposdeExames1: TMenuItem
        Caption = 'Tipos de Exames'
        OnClick = iposdeExames1Click
      end
      object iposdeConvnios1: TMenuItem
        Caption = 'Tipos de Conv'#234'nios'
        OnClick = iposdeConvnios1Click
      end
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        OnClick = Cidades1Click
      end
      object Pacientes1: TMenuItem
        Caption = 'Pacientes'
        OnClick = Pacientes1Click
      end
    end
    object Consultas1: TMenuItem
      Caption = 'Consultas'
      object Pacientes2: TMenuItem
        Caption = 'Pacientes'
        OnClick = Pacientes2Click
      end
    end
  end
  object Conector: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=RevisaoODBC;Initial Catalog=revisaolpv'
    LoginPrompt = False
    Left = 130
    Top = 96
  end
end
