object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'FPrincipal'
  ClientHeight = 222
  ClientWidth = 447
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
    object Aba1: TMenuItem
      Caption = 'Exercicios'
      object Aba1Item1: TMenuItem
        Caption = 'Grid - Exerc'#237'cio 01'
        OnClick = Aba1Item1Click
      end
      object Aba1Item2: TMenuItem
        Caption = 'Grid - Exerc'#237'cio 02'
        OnClick = Aba1Item2Click
      end
    end
  end
end
