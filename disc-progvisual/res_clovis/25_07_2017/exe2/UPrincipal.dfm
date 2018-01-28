object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 2'
  ClientHeight = 296
  ClientWidth = 569
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
    Top = 50
    object ExercciosArquivos1: TMenuItem
      Caption = 'Exerc'#237'cios - Arquivos'
      object Banco1: TMenuItem
        Caption = 'Banco'
        OnClick = Banco1Click
      end
      object Caracteres1: TMenuItem
        Caption = 'Caracteres'
        OnClick = Caracteres1Click
      end
    end
  end
end
