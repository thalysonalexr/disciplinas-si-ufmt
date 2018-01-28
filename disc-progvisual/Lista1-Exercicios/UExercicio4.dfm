object FExercicio04: TFExercicio04
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 04'
  ClientHeight = 380
  ClientWidth = 542
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
    Left = 200
    Top = 329
    Width = 121
    Height = 22
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel
    Left = 117
    Top = 286
    Width = 102
    Height = 13
    Caption = 'Caracter de pesquisa'
  end
  object Label2: TLabel
    Left = 291
    Top = 286
    Width = 98
    Height = 13
    Caption = 'Caracter '#224' substituir'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 233
    Height = 241
    Caption = 'Texto1'
    TabOrder = 0
    object Memo1: TMemo
      Left = 3
      Top = 16
      Width = 227
      Height = 222
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 288
    Top = 8
    Width = 233
    Height = 241
    Caption = 'Texto2'
    TabOrder = 1
    object Memo2: TMemo
      Left = 3
      Top = 16
      Width = 227
      Height = 222
      TabOrder = 0
    end
  end
  object btnTxt1Txt2: TButton
    Left = 24
    Top = 255
    Width = 214
    Height = 25
    Caption = 'Substituir do texto1 para o texto2 ->'
    TabOrder = 2
    OnClick = btnTxt1Txt2Click
  end
  object btnTxt2Txt1: TButton
    Left = 291
    Top = 255
    Width = 214
    Height = 25
    Caption = '<- Substituir do texto2 para o texto1'
    TabOrder = 3
    OnClick = btnTxt2Txt1Click
  end
  object CampoPesquisa: TEdit
    Left = 117
    Top = 302
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object CampoSubstituir: TEdit
    Left = 291
    Top = 302
    Width = 121
    Height = 21
    TabOrder = 5
  end
end
