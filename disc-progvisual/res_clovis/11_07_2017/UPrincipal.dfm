object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'FPrincipal'
  ClientHeight = 288
  ClientWidth = 524
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
    Left = 142
    Top = 26
    object Exerccios1: TMenuItem
      Caption = 'Exerc'#237'cios'
      object Exerccio1Grids1: TMenuItem
        Caption = 'Exerc'#237'cio1 - Grids'
        OnClick = Exerccio1Grids1Click
      end
      object Exeerccio2TTexto1: TMenuItem
        Caption = 'Exerc'#237'cio2 - TTexto'
        OnClick = Exeerccio2TTexto1Click
      end
      object Exeerccio3Grid1: TMenuItem
        Caption = 'Exerc'#237'cio 3 - Grid'
        OnClick = Exeerccio3Grid1Click
      end
    end
  end
end
