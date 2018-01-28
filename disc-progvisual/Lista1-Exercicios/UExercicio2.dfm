object FExercicio02: TFExercicio02
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 02'
  ClientHeight = 312
  ClientWidth = 376
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
  object btnSair: TSpeedButton
    Left = 280
    Top = 272
    Width = 73
    Height = 25
    Caption = 'Sair'
    OnClick = btnSairClick
  end
  object Label1: TLabel
    Left = 40
    Top = 21
    Width = 77
    Height = 13
    Caption = 'CAIXA LISTA 01'
  end
  object Label2: TLabel
    Left = 248
    Top = 21
    Width = 77
    Height = 13
    Caption = 'CAIXA LISTA 02'
  end
  object Label3: TLabel
    Left = 40
    Top = 149
    Width = 45
    Height = 13
    Caption = 'MEMO 01'
  end
  object Label4: TLabel
    Left = 248
    Top = 149
    Width = 45
    Height = 13
    Caption = 'MEMO 02'
  end
  object ListBox1: TListBox
    Left = 24
    Top = 40
    Width = 121
    Height = 97
    ItemHeight = 13
    PopupMenu = PopupMenu1
    TabOrder = 0
  end
  object ListBox2: TListBox
    Left = 232
    Top = 40
    Width = 121
    Height = 97
    ItemHeight = 13
    PopupMenu = PopupMenu2
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 24
    Top = 168
    Width = 121
    Height = 89
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 232
    Top = 168
    Width = 121
    Height = 89
    ReadOnly = True
    TabOrder = 3
  end
  object btnInverterStr: TButton
    Left = 151
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Inverter Str'
    TabOrder = 4
    OnClick = btnInverterStrClick
  end
  object btnExcluirVogais: TButton
    Left = 151
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Excluir vogais'
    TabOrder = 5
    OnClick = btnExcluirVogaisClick
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 40
    object Inserir1: TMenuItem
      Caption = 'Inserir'
      OnClick = Inserir1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 200
    Top = 40
    object Limpartudo1: TMenuItem
      Caption = 'Limpar tudo'
      OnClick = Limpartudo1Click
    end
  end
end
