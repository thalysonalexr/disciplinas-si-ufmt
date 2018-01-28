object FExercicio3: TFExercicio3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 03'
  ClientHeight = 233
  ClientWidth = 519
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
  object SpeedButton1: TSpeedButton
    Left = 431
    Top = 175
    Width = 73
    Height = 33
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object Grid: TStringGrid
    Left = 8
    Top = 24
    Width = 369
    Height = 129
    ColCount = 6
    DefaultColWidth = 60
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 6
    FixedRows = 0
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 159
    Width = 193
    Height = 58
    Caption = 'Opera'#231#245'es'
    TabOrder = 1
    object Button1: TButton
      Left = 19
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Preencher'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Button2: TButton
    Left = 108
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 383
    Top = 24
    Width = 121
    Height = 129
    ItemHeight = 13
    TabOrder = 3
  end
end
