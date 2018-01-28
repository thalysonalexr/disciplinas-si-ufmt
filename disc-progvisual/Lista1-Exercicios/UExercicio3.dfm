object FExercicio03: TFExercicio03
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 03'
  ClientHeight = 365
  ClientWidth = 453
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
  object spdBtnSair: TSpeedButton
    Left = 360
    Top = 180
    Width = 73
    Height = 37
    Caption = 'Sair'
    OnClick = spdBtnSairClick
  end
  object Grid1: TStringGrid
    Left = 24
    Top = 24
    Width = 409
    Height = 105
    DefaultColWidth = 80
    DefaultRowHeight = 18
    FixedCols = 0
    FixedRows = 0
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 24
    Top = 135
    Width = 121
    Height = 82
    ItemHeight = 13
    PopupMenu = PopupMenu1
    TabOrder = 1
  end
  object btnInserir: TButton
    Left = 215
    Top = 135
    Width = 122
    Height = 42
    Caption = 'Inserir Aleat'#243'riamente'
    TabOrder = 2
    OnClick = btnInserirClick
  end
  object Grid2: TStringGrid
    Left = 24
    Top = 232
    Width = 409
    Height = 105
    DefaultColWidth = 80
    DefaultRowHeight = 18
    FixedCols = 0
    FixedRows = 0
    TabOrder = 3
  end
  object btnVerificar: TButton
    Left = 215
    Top = 183
    Width = 122
    Height = 39
    Caption = 'Verificar Pal'#237'ndromos'
    TabOrder = 4
    OnClick = btnVerificarClick
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 136
    object Inserir1: TMenuItem
      Caption = 'Inserir'
      OnClick = Inserir1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
end
