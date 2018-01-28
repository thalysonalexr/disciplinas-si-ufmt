object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fomul'#225'rio Principal'
  ClientHeight = 172
  ClientWidth = 321
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
  object Button1: TButton
    Left = 192
    Top = 96
    Width = 113
    Height = 49
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 8
    object Questes1: TMenuItem
      Caption = 'Quest'#245'es'
      object Questao1: TMenuItem
        Caption = 'Quest'#227'o 01'
        OnClick = Questao1Click
      end
      object Questao2: TMenuItem
        Caption = 'Quest'#227'o 02'
        OnClick = Questao2Click
      end
    end
  end
end
