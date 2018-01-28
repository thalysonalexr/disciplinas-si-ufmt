object FExe2: TFExe2
  Left = 0
  Top = 0
  Caption = 'FExe2'
  ClientHeight = 372
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lista1: TListBox
    Left = 48
    Top = 32
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 0
  end
  object lista3: TListBox
    Left = 48
    Top = 160
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 1
  end
  object lista2: TListBox
    Left = 175
    Top = 32
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 2
  end
  object listaresultado: TListBox
    Left = 175
    Top = 160
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 3
  end
  object Button1: TButton
    Left = 408
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 4
    OnClick = Button1Click
  end
end
