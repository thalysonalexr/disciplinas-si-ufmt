object FResolucao2: TFResolucao2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Resolu'#231#227'o 02'
  ClientHeight = 178
  ClientWidth = 392
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
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 67
    Height = 13
    Caption = 'Texto Original'
  end
  object Label2: TLabel
    Left = 16
    Top = 62
    Width = 83
    Height = 13
    Caption = 'Texto Resultante'
  end
  object CampoTxtOriginal: TEdit
    Left = 16
    Top = 35
    Width = 361
    Height = 21
    TabOrder = 0
  end
  object CampoTxtResultado: TEdit
    Left = 16
    Top = 81
    Width = 361
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 108
    Width = 376
    Height = 61
    TabOrder = 2
    object Button1: TButton
      Left = 32
      Top = 16
      Width = 105
      Height = 33
      Caption = 'Retirar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 240
      Top = 16
      Width = 105
      Height = 33
      Caption = 'Sair'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
