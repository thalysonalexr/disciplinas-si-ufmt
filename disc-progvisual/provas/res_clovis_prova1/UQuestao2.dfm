object FQuestao2: TFQuestao2
  Left = 0
  Top = 0
  Caption = 'Questao2'
  ClientHeight = 177
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 38
    Top = 7
    Width = 67
    Height = 13
    Caption = 'Texto Original'
  end
  object Label2: TLabel
    Left = 38
    Top = 66
    Width = 83
    Height = 13
    Caption = 'Texto Resultante'
  end
  object Panel1: TPanel
    Left = 0
    Top = 122
    Width = 470
    Height = 55
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object Button3: TButton
      Left = 262
      Top = 10
      Width = 119
      Height = 39
      Caption = 'Sair'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 84
      Top = 10
      Width = 119
      Height = 39
      Caption = 'Retirar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object CampoOriginal: TEdit
    Left = 38
    Top = 24
    Width = 399
    Height = 21
    TabOrder = 1
    Text = 'Universiade   federal    de      mato                 grosso  '
  end
  object CampoResultado: TEdit
    Left = 38
    Top = 84
    Width = 399
    Height = 21
    TabOrder = 2
  end
end
