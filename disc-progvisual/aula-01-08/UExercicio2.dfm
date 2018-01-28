object FExercicio2: TFExercicio2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 02'
  ClientHeight = 234
  ClientWidth = 385
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
  object btnPesquisarCar: TButton
    Left = 264
    Top = 184
    Width = 105
    Height = 33
    Caption = 'Pesquisar (CAR)'
    TabOrder = 0
    OnClick = btnPesquisarCarClick
  end
  object btnTotPalavras: TButton
    Left = 264
    Top = 136
    Width = 105
    Height = 33
    Caption = 'Total Palavras'
    TabOrder = 1
    OnClick = btnTotPalavrasClick
  end
  object btnPesquisarPalavras: TButton
    Left = 264
    Top = 88
    Width = 105
    Height = 34
    Caption = 'Pesquisar Palavras'
    TabOrder = 2
    OnClick = btnPesquisarPalavrasClick
  end
  object GroupBox1: TGroupBox
    Left = 248
    Top = 25
    Width = 121
    Height = 48
    Caption = 'Caracter/Palavra'
    TabOrder = 3
    object Edit1: TEdit
      Left = 3
      Top = 16
      Width = 115
      Height = 21
      TabOrder = 0
    end
  end
end
