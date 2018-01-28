object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tela Principal'
  ClientHeight = 262
  ClientWidth = 463
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
    object Exerccios1: TMenuItem
      Caption = 'Exerc'#237'cios'
      object Exerccio011: TMenuItem
        Caption = 'Exerc'#237'cio 01'
        OnClick = Exerccio011Click
      end
      object Exerccio021: TMenuItem
        Caption = 'Exerc'#237'cio 02'
        OnClick = Exerccio021Click
      end
      object Exerccio031: TMenuItem
        Caption = 'Exerc'#237'cio 03'
        OnClick = Exerccio031Click
      end
      object Exerccio041: TMenuItem
        Caption = 'Exerc'#237'cio 04'
        OnClick = Exerccio041Click
      end
    end
  end
end
