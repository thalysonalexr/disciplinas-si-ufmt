object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'FPrincipal'
  ClientHeight = 319
  ClientWidth = 651
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
    Left = 246
    Top = 88
    object Exerccios1: TMenuItem
      Caption = 'Exerc'#237'cios'
      object Exerccio21: TMenuItem
        Caption = 'Exerc'#237'cio 2'
        OnClick = Exerccio21Click
      end
      object Exerccio51: TMenuItem
        Caption = 'Exerc'#237'cio 5'
        OnClick = Exerccio51Click
      end
    end
  end
end
