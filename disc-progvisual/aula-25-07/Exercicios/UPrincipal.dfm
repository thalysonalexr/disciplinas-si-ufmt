object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FPrincipal'
  ClientHeight = 209
  ClientWidth = 343
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
  object btnSair: TButton
    Left = 232
    Top = 152
    Width = 91
    Height = 41
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnSairClick
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object Exerccio011: TMenuItem
      Caption = 'Exerc'#237'cios'
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
