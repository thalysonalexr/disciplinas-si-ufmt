object FExercicio05: TFExercicio05
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 05'
  ClientHeight = 299
  ClientWidth = 191
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 172
    Height = 13
    Caption = 'Lista de n'#250'meros PARES e '#205'MPARES'
  end
  object ListBox1: TListBox
    Left = 8
    Top = 27
    Width = 173
    Height = 214
    ItemHeight = 13
    TabOrder = 0
  end
  object btnVerificar: TButton
    Left = 8
    Top = 256
    Width = 173
    Height = 25
    Caption = 'Verificar PARES && '#205'MPARES'
    TabOrder = 1
    OnClick = btnVerificarClick
  end
end
