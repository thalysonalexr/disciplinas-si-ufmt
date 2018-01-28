object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio Principal'
  ClientHeight = 231
  ClientWidth = 358
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
    Left = 16
    Top = 8
    object Exercicios1: TMenuItem
      Caption = 'Exercicios'
      object Exercicio1: TMenuItem
        Caption = 'Exerc'#237'cio 01'
        OnClick = Exercicio1Click
      end
      object Exercicio2: TMenuItem
        Caption = 'Exerc'#237'cio 02'
        OnClick = Exercicio2Click
      end
    end
  end
end
