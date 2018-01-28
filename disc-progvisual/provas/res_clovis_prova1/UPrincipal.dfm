object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'FPrincipal'
  ClientHeight = 275
  ClientWidth = 367
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
    Left = 80
    Top = 100
    object Questes1: TMenuItem
      Caption = 'Quest'#245'es'
      object Questo11: TMenuItem
        Caption = 'Quest'#227'o 1'
        OnClick = Questo11Click
      end
      object Questo21: TMenuItem
        Caption = 'Quest'#227'o 2'
        OnClick = Questo21Click
      end
    end
  end
end
