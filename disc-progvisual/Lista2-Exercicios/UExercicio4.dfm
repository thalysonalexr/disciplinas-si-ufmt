object FExercicio4: TFExercicio4
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 04'
  ClientHeight = 223
  ClientWidth = 477
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
    Left = 408
    Top = 184
    Width = 56
    Height = 25
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object Grid1: TStringGrid
    Left = 152
    Top = 16
    Width = 153
    Height = 153
    ColCount = 7
    DefaultColWidth = 20
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 7
    FixedRows = 0
    TabOrder = 0
  end
  object Grid2: TStringGrid
    Left = 311
    Top = 16
    Width = 153
    Height = 153
    ColCount = 7
    DefaultColWidth = 20
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 7
    FixedRows = 0
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 184
    Width = 129
    Height = 25
    Caption = 'Verificar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object RadioOperacoes: TRadioGroup
    Left = 8
    Top = 16
    Width = 129
    Height = 153
    Caption = 'Opera'#231#245'es'
    Items.Strings = (
      'Diagonal Superior'
      'Diagonal Inferior'
      'Diagonal Principal')
    TabOrder = 3
  end
end
