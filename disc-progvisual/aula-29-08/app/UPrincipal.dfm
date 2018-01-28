object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Revis'#227'o'
  ClientHeight = 211
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MenuPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MenuPrincipal: TMainMenu
    Left = 24
    Top = 8
    object abelas1: TMenuItem
      Caption = 'Tabelas'
      object iposdeExamos1: TMenuItem
        Caption = 'Tipos de Exames'
        OnClick = iposdeExamos1Click
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
      object Mdicos1: TMenuItem
        Caption = 'M'#233'dicos'
        OnClick = Mdicos1Click
      end
      object Hospitais1: TMenuItem
        Caption = 'Hospitais'
        OnClick = Hospitais1Click
      end
      object MdicoseConvnios1: TMenuItem
        Caption = 'M'#233'dicos e Conv'#234'nios'
        OnClick = MdicoseConvnios1Click
      end
      object Agendamentos: TMenuItem
        Caption = 'Agendamentos'
        OnClick = AgendamentosClick
      end
      object ExamesMdicos1: TMenuItem
        Caption = 'Exames M'#233'dicos'
        OnClick = ExamesMdicos1Click
      end
    end
    object Consultas1: TMenuItem
      Caption = 'Consultas'
      object Pacientes2: TMenuItem
        Caption = 'Pacientes'
        OnClick = Pacientes2Click
      end
      object Cidades2: TMenuItem
        Caption = 'Cidades'
        OnClick = Cidades2Click
      end
      object Convnios1: TMenuItem
        Caption = 'Conv'#234'nios'
        OnClick = Convnios1Click
      end
      object Exames1: TMenuItem
        Caption = 'Exames'
        OnClick = Exames1Click
      end
    end
  end
  object Conector: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=RevisaoODBC;Initial Catalog=revisaolpv'
    LoginPrompt = False
    Left = 24
    Top = 56
  end
end
