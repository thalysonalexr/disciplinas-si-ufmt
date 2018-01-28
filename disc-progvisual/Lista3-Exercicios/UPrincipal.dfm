object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Menu'
  ClientHeight = 209
  ClientWidth = 294
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
  object MainMenu1: TMainMenu
    Left = 8
    object Exerccios1: TMenuItem
      Caption = 'Exerc'#237'cios'
      object Exercicio01: TMenuItem
        Caption = 'Exerc'#237'cio 01'
        OnClick = Exercicio01Click
      end
      object Exercicio02: TMenuItem
        Caption = 'Exerc'#237'cio 02'
        OnClick = Exercicio02Click
      end
      object Exercicio03: TMenuItem
        Caption = 'Exerc'#237'cio 03'
        OnClick = Exercicio03Click
      end
      object Exercicio04: TMenuItem
        Caption = 'Exerc'#237'cio 04'
        OnClick = Exercicio04Click
      end
      object Exercicio05: TMenuItem
        Caption = 'Exerc'#237'cio 05'
        OnClick = Exercicio05Click
      end
      object Exercicio06: TMenuItem
        Caption = 'Exerc'#237'cio 06'
        OnClick = Exercicio06Click
      end
      object Exercicio07: TMenuItem
        Caption = 'Exerc'#237'cio 07'
        OnClick = Exercicio07Click
      end
    end
  end
end
