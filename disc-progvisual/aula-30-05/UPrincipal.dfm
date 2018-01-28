object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Fprincipal'
  ClientHeight = 263
  ClientWidth = 368
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
    Left = 24
    Top = 24
    object Exercicios1: TMenuItem
      Caption = 'Exerc'#237'cios'
      object Exercicio11: TMenuItem
        Caption = 'Exerc'#237'cio 1'
        OnClick = Exercicio11Click
      end
      object Exercicio21: TMenuItem
        Caption = 'Exerc'#237'cio 2'
        OnClick = Exercicio21Click
      end
      object Exerccio31: TMenuItem
        Caption = 'Exerc'#237'cio 3'
        OnClick = Exerccio31Click
      end
    end
  end
end
