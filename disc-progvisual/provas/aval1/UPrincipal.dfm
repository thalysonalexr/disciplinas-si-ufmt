object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio principal'
  ClientHeight = 218
  ClientWidth = 350
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
    Top = 8
    object Resolues1: TMenuItem
      Caption = 'Resolu'#231#245'es'
      object Resoluo01: TMenuItem
        Caption = 'Resolu'#231#227'o 01'
        OnClick = Resoluo01Click
      end
      object Resoluo02: TMenuItem
        Caption = 'Resolu'#231#227'o 02'
        OnClick = Resoluo02Click
      end
    end
  end
end
