object FExercicio2: TFExercicio2
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 02'
  ClientHeight = 346
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 143
    Width = 53
    Height = 13
    Caption = 'Caracteres'
  end
  object Label2: TLabel
    Left = 16
    Top = 143
    Width = 42
    Height = 13
    Caption = 'Numeros'
  end
  object SpeedButton1: TSpeedButton
    Left = 224
    Top = 313
    Width = 57
    Height = 25
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object Grid: TStringGrid
    Left = 16
    Top = 16
    Width = 265
    Height = 121
    DefaultColWidth = 50
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 6
    FixedRows = 0
    TabOrder = 0
  end
  object Button1: TButton
    Left = 104
    Top = 313
    Width = 89
    Height = 25
    Caption = 'Separar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object lstNumeros: TListBox
    Left = 16
    Top = 162
    Width = 121
    Height = 145
    ItemHeight = 13
    TabOrder = 2
  end
  object lstCaracteres: TListBox
    Left = 160
    Top = 162
    Width = 121
    Height = 145
    ItemHeight = 13
    TabOrder = 3
  end
end
