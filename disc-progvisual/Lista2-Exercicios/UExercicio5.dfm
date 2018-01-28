object FExercicio5: TFExercicio5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 05'
  ClientHeight = 158
  ClientWidth = 225
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
    Left = 144
    Top = 119
    Width = 73
    Height = 25
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 209
    Height = 105
    Caption = 'Campos para preencher'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 77
      Height = 13
      Caption = 'Campo de texto'
    end
    object Label2: TLabel
      Left = 16
      Top = 70
      Width = 108
      Height = 13
      Caption = 'Cactere para pesquisa'
    end
    object CampoTexto: TEdit
      Left = 16
      Top = 40
      Width = 177
      Height = 21
      TabOrder = 0
    end
    object CampoPesquisa: TEdit
      Left = 152
      Top = 67
      Width = 41
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 8
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
