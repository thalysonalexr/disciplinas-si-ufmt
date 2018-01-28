object FExercicio1: TFExercicio1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 01'
  ClientHeight = 294
  ClientWidth = 185
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
  object SpeedButton1: TSpeedButton
    Left = 120
    Top = 264
    Width = 57
    Height = 22
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object ListBox1: TListBox
    Left = 16
    Top = 16
    Width = 153
    Height = 185
    ItemHeight = 13
    PopupMenu = PopupMenu1
    TabOrder = 0
  end
  object Button1: TButton
    Left = 56
    Top = 217
    Width = 75
    Height = 25
    Caption = 'Contar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 216
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
