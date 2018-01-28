object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'FPrincipal'
  ClientHeight = 226
  ClientWidth = 581
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
    Left = 70
    Top = 56
    object Exereccios1: TMenuItem
      Caption = 'Exerec'#237'cios'
      object Exerccio11: TMenuItem
        Caption = 'Exerc'#237'cio 1'
        OnClick = Exerccio11Click
      end
      object Exerccio21: TMenuItem
        Caption = 'Exerc'#237'cio 2'
        OnClick = Exerccio21Click
      end
      object Eerccio31: TMenuItem
        Caption = 'Exerc'#237'cio 3'
        OnClick = Eerccio31Click
      end
      object Exerccio41: TMenuItem
        Caption = 'Exerc'#237'cio 4'
        OnClick = Exerccio41Click
      end
    end
  end
end
