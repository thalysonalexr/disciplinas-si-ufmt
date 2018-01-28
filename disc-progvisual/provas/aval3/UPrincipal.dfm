object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio Principal'
  ClientHeight = 268
  ClientWidth = 384
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
  object ConexaoBanco: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;User I' +
      'D=root;Data Source=Avaliacao_Local;Initial Catalog=aval3'
    LoginPrompt = False
    Left = 80
    Top = 16
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 16
    object abelas1: TMenuItem
      Caption = 'Tabelas'
      object reasdePlantio1: TMenuItem
        Caption = #193'reas de Plantio'
        OnClick = reasdePlantio1Click
      end
      object EquipamentoUtilizados1: TMenuItem
        Caption = 'Equipamento Utilizados'
        OnClick = EquipamentoUtilizados1Click
      end
      object OrdensdeServio1: TMenuItem
        Caption = 'Ordens de Servi'#231'o'
        OnClick = OrdensdeServio1Click
      end
      object Fazendas1: TMenuItem
        Caption = 'Fazendas'
        OnClick = Fazendas1Click
      end
      object Equipamentos1: TMenuItem
        Caption = 'Equipamentos'
        OnClick = Equipamentos1Click
      end
      object ResponsveisTcnicos1: TMenuItem
        Caption = 'Respons'#225'veis T'#233'cnicos'
        OnClick = ResponsveisTcnicos1Click
      end
    end
    object Consultas1: TMenuItem
      Caption = 'Consultas'
      object Consultar1: TMenuItem
        Caption = 'Consultar'
        OnClick = Consultar1Click
      end
    end
  end
end
