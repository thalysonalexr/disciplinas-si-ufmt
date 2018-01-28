object FResolucao1: TFResolucao1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Resolu'#231#227'o 01'
  ClientHeight = 362
  ClientWidth = 802
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
  object Grid: TStringGrid
    Left = 16
    Top = 24
    Width = 770
    Height = 257
    ColCount = 10
    DefaultColWidth = 75
    FixedCols = 0
    RowCount = 10
    FixedRows = 0
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 287
    Width = 770
    Height = 67
    TabOrder = 1
    object Button1: TButton
      Left = 168
      Top = 22
      Width = 105
      Height = 33
      Caption = 'Calcular'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 496
      Top = 22
      Width = 105
      Height = 33
      Caption = 'Sair'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
