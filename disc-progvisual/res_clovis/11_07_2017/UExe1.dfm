object FExe1: TFExe1
  Left = 0
  Top = 0
  Caption = 'FExe1'
  ClientHeight = 360
  ClientWidth = 759
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
  object BitBtn2: TBitBtn
    Left = 314
    Top = 311
    Width = 117
    Height = 41
    Caption = 'Sair'
    TabOrder = 0
    OnClick = BitBtn2Click
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 729
    Height = 279
    ActivePage = TabSheet2
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Grids'
      object g1: TStringGrid
        Left = 10
        Top = 14
        Width = 343
        Height = 143
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object g2: TStringGrid
        Left = 368
        Top = 12
        Width = 343
        Height = 143
        FixedCols = 0
        FixedRows = 0
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 298
        Top = 182
        Width = 117
        Height = 41
        Caption = 'Somar'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Listas'
      ImageIndex = 1
      ExplicitLeft = 20
      object lista1: TListBox
        Left = 16
        Top = 10
        Width = 99
        Height = 175
        ItemHeight = 13
        TabOrder = 0
      end
      object lista2: TListBox
        Left = 211
        Top = 10
        Width = 99
        Height = 175
        ItemHeight = 13
        TabOrder = 1
      end
      object lista3: TListBox
        Left = 406
        Top = 10
        Width = 99
        Height = 175
        ItemHeight = 13
        TabOrder = 2
      end
      object ListaResultados: TListBox
        Left = 602
        Top = 10
        Width = 99
        Height = 175
        ItemHeight = 13
        TabOrder = 3
      end
      object BitBtn3: TBitBtn
        Left = 316
        Top = 206
        Width = 91
        Height = 38
        Caption = 'Calcular'
        TabOrder = 4
        OnClick = BitBtn3Click
      end
    end
  end
end
