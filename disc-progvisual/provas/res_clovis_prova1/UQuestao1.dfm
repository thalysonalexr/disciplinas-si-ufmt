object FQuestao1: TFQuestao1
  Left = 0
  Top = 0
  Caption = 'Questao1'
  ClientHeight = 395
  ClientWidth = 867
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
  object Grid1: TStringGrid
    Left = 24
    Top = 18
    Width = 825
    Height = 261
    ColCount = 10
    DefaultColWidth = 80
    FixedCols = 0
    RowCount = 10
    FixedRows = 0
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 344
    Width = 867
    Height = 51
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object Button1: TButton
      Left = 250
      Top = 9
      Width = 131
      Height = 38
      Caption = 'Calcular'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 504
      Top = 9
      Width = 131
      Height = 38
      Caption = 'Sair'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
