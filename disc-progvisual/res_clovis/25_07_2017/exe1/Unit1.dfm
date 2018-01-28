object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 414
  ClientWidth = 889
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnCriar: TButton
    Left = 8
    Top = 272
    Width = 137
    Height = 41
    Caption = 'Criar Arquivo'
    TabOrder = 0
    OnClick = BtnCriarClick
  end
  object BtnLer: TButton
    Left = 186
    Top = 272
    Width = 137
    Height = 41
    Caption = 'Ler Arquivo'
    TabOrder = 1
    OnClick = BtnLerClick
  end
  object Edit1: TEdit
    Left = 186
    Top = 228
    Width = 137
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object BtnLista: TButton
    Left = 386
    Top = 272
    Width = 137
    Height = 41
    Caption = 'Ler Lista'
    TabOrder = 3
    OnClick = BtnListaClick
  end
  object ListBox1: TListBox
    Left = 350
    Top = 28
    Width = 203
    Height = 221
    ItemHeight = 13
    TabOrder = 4
  end
  object BtnAcrescentar: TButton
    Left = 576
    Top = 272
    Width = 137
    Height = 41
    Caption = 'Acrescentar'
    TabOrder = 5
    OnClick = BtnAcrescentarClick
  end
  object Edit2: TEdit
    Left = 576
    Top = 228
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit2'
  end
  object BtnSomar: TButton
    Left = 744
    Top = 272
    Width = 137
    Height = 41
    Caption = 'Somar Valores'
    TabOrder = 7
    OnClick = BtnSomarClick
  end
  object Edit3: TEdit
    Left = 102
    Top = 338
    Width = 741
    Height = 21
    TabOrder = 8
    Text = 'Edit3'
  end
  object DialogoAbertura: TOpenDialog
    Filter = 'Arquivos Texto|*.txt'
    Left = 614
    Top = 56
  end
end
