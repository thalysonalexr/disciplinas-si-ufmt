object FExe1: TFExe1
  Left = 0
  Top = 0
  Caption = 'FExe1'
  ClientHeight = 297
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object spdBtnAtribuirNum: TSpeedButton
    Left = 222
    Top = 248
    Width = 121
    Height = 33
    Caption = 'V. num'#233'ricos * 2'
    OnClick = spdBtnAtribuirNumClick
  end
  object spdBtnAleatorio: TSpeedButton
    Left = 439
    Top = 248
    Width = 81
    Height = 34
    Caption = 'N. aleat'#243'rios'
    OnClick = spdBtnAleatorioClick
  end
  object Label1: TLabel
    Left = 471
    Top = 24
    Width = 25
    Height = 13
    Caption = '<= 5'
  end
  object Label2: TLabel
    Left = 479
    Top = 70
    Width = 17
    Height = 13
    Caption = '> 5'
  end
  object SpeedButton3: TSpeedButton
    Left = 455
    Top = 127
    Width = 65
    Height = 33
    Caption = 'Pesquisar'
    OnClick = SpeedButton3Click
  end
  object GridDados: TStringGrid
    Left = 24
    Top = 24
    Width = 425
    Height = 209
    ColCount = 10
    DefaultColWidth = 40
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 10
    FixedRows = 0
    TabOrder = 0
  end
  object bitBtnAtribuirV: TBitBtn
    Left = 111
    Top = 248
    Width = 105
    Height = 33
    Caption = 'Atribuir valores'
    TabOrder = 1
    OnClick = bitBtnAtribuirVClick
  end
  object CampoValor: TEdit
    Left = 360
    Top = 248
    Width = 73
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object CampoMenor: TEdit
    Left = 455
    Top = 43
    Width = 65
    Height = 21
    TabOrder = 3
  end
  object CampoMaior: TEdit
    Left = 455
    Top = 89
    Width = 65
    Height = 21
    TabOrder = 4
  end
  object bitBtnAtribuir: TBitBtn
    Left = 24
    Top = 255
    Width = 81
    Height = 26
    Caption = 'Atribuir'
    TabOrder = 5
    OnClick = bitBtnAtribuirClick
  end
end
