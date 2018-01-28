object FExercicio1: TFExercicio1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 01'
  ClientHeight = 264
  ClientWidth = 316
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
    Left = 304
    Top = 411
    Width = 57
    Height = 25
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object Button2: TButton
    Left = 150
    Top = 411
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 297
    Height = 209
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Somar GRIDS'
      ExplicitHeight = 213
      object Grid1: TStringGrid
        Left = 3
        Top = 3
        Width = 137
        Height = 137
        DefaultColWidth = 25
        DefaultRowHeight = 25
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object Grid2: TStringGrid
        Left = 146
        Top = 3
        Width = 137
        Height = 137
        DefaultColWidth = 25
        DefaultRowHeight = 25
        FixedCols = 0
        FixedRows = 0
        TabOrder = 1
      end
      object Button3: TButton
        Left = 104
        Top = 146
        Width = 75
        Height = 25
        Caption = 'Soma total'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Calcular LISTBOX'
      ImageIndex = 1
      ExplicitLeft = 36
      ExplicitTop = 40
      object ListBox1: TListBox
        Left = 28
        Top = 3
        Width = 41
        Height = 137
        ItemHeight = 13
        TabOrder = 0
      end
      object ListBox2: TListBox
        Left = 75
        Top = 3
        Width = 41
        Height = 137
        ItemHeight = 13
        TabOrder = 1
      end
      object ListBox3: TListBox
        Left = 122
        Top = 3
        Width = 41
        Height = 137
        ItemHeight = 13
        TabOrder = 2
      end
      object ListBox4: TListBox
        Left = 192
        Top = 3
        Width = 70
        Height = 137
        ItemHeight = 13
        TabOrder = 3
      end
      object Calcular: TButton
        Left = 112
        Top = 146
        Width = 75
        Height = 25
        Caption = 'Calcular'
        TabOrder = 4
        OnClick = CalcularClick
      end
    end
  end
  object Sair: TButton
    Left = 100
    Top = 223
    Width = 117
    Height = 32
    Caption = 'Sair'
    TabOrder = 2
    OnClick = SairClick
  end
end
