object FExercicio01: TFExercicio01
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 01'
  ClientHeight = 271
  ClientWidth = 412
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
  object spdBtnSair: TSpeedButton
    Left = 168
    Top = 240
    Width = 73
    Height = 22
    Caption = 'Sair'
    OnClick = spdBtnSairClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 185
    Height = 185
    Caption = 'S'#233'rie 01'
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 24
      Width = 106
      Height = 13
      Caption = 'Digite um valor para N'
    end
    object CampoValor1: TEdit
      Left = 14
      Top = 43
      Width = 115
      Height = 21
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 3
      Top = 112
      Width = 179
      Height = 58
      Caption = 'Resultado'
      Enabled = False
      TabOrder = 1
      object CampoResultado1: TEdit
        Left = 3
        Top = 24
        Width = 173
        Height = 25
        TabOrder = 0
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 216
    Top = 8
    Width = 188
    Height = 185
    Caption = 'S'#233'rie 02'
    TabOrder = 1
    object Label2: TLabel
      Left = 14
      Top = 24
      Width = 105
      Height = 13
      Caption = 'Digite um valor para V'
    end
    object Label3: TLabel
      Left = 16
      Top = 66
      Width = 106
      Height = 13
      Caption = 'Digite um valor para N'
    end
    object CampoValor2: TEdit
      Left = 16
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object GroupBox4: TGroupBox
      Left = 3
      Top = 112
      Width = 179
      Height = 58
      Caption = 'Resultado'
      Enabled = False
      TabOrder = 1
      object CampoResultado2: TEdit
        Left = 3
        Top = 24
        Width = 173
        Height = 25
        TabOrder = 0
      end
    end
    object CampoValor3: TEdit
      Left = 16
      Top = 85
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object btnCalcular1: TButton
    Left = 8
    Top = 199
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcular1Click
  end
  object btnCalcular2: TButton
    Left = 216
    Top = 199
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcular2Click
  end
  object btnLimpar1: TButton
    Left = 118
    Top = 199
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = btnLimpar1Click
  end
  object btnLimpar2: TButton
    Left = 329
    Top = 199
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = btnLimpar2Click
  end
end
