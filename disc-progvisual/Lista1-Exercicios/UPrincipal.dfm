object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cios'
  ClientHeight = 231
  ClientWidth = 394
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
    object Exerccio011: TMenuItem
      Caption = 'Exercicios'
      object Exerccio012: TMenuItem
        Caption = 'Exerc'#237'cio 01'
        OnClick = Exerccio012Click
      end
      object Exerccio021: TMenuItem
        Caption = 'Exerc'#237'cio 02'
        OnClick = Exerccio021Click
      end
      object Exerccio022: TMenuItem
        Caption = 'Exerc'#237'cio 03'
        OnClick = Exerccio022Click
      end
      object Exerccio041: TMenuItem
        Caption = 'Exerc'#237'cio 04'
        OnClick = Exerccio041Click
      end
      object Exerccio051: TMenuItem
        Caption = 'Exerc'#237'cio 05'
        OnClick = Exerccio051Click
      end
    end
  end
end
