object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 264
  ClientWidth = 369
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
  object btnCriarArquivo: TButton
    Left = 256
    Top = 16
    Width = 97
    Height = 33
    Caption = 'Criar Arquivo'
    TabOrder = 0
    OnClick = btnCriarArquivoClick
  end
  object btnLerArquivo: TButton
    Left = 256
    Top = 55
    Width = 97
    Height = 33
    Caption = 'Ler U. Linha'
    TabOrder = 1
    OnClick = btnLerArquivoClick
  end
  object CampoTexto: TEdit
    Left = 16
    Top = 16
    Width = 226
    Height = 25
    ReadOnly = True
    TabOrder = 2
  end
  object btnLerLista: TButton
    Left = 256
    Top = 94
    Width = 97
    Height = 33
    Caption = 'Ler Arquivo'
    TabOrder = 3
    OnClick = btnLerListaClick
  end
  object ListBox1: TListBox
    Left = 16
    Top = 47
    Width = 226
    Height = 191
    ItemHeight = 13
    TabOrder = 4
  end
  object btnAcrescentar: TButton
    Left = 256
    Top = 166
    Width = 97
    Height = 33
    Caption = 'Acrescentar'
    TabOrder = 5
    OnClick = btnAcrescentarClick
  end
  object CampoAcrescentar: TEdit
    Left = 256
    Top = 139
    Width = 97
    Height = 21
    TabOrder = 6
  end
  object btnSomar: TButton
    Left = 256
    Top = 205
    Width = 97
    Height = 33
    Caption = 'Somar Valores'
    TabOrder = 7
    OnClick = btnSomarClick
  end
  object DialogoAbertura: TOpenDialog
    Filter = '|'#39'C:\Users\Administrador\Desktop\aula-25-07\Arquivos'
    Left = 328
    Top = 208
  end
end
