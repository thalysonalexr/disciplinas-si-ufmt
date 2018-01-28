object FExe2: TFExe2
  Left = 0
  Top = 0
  Caption = 'FExe2'
  ClientHeight = 294
  ClientWidth = 320
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
    Left = 16
    Top = 160
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 16
    Top = 206
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object RadioOperacoes: TRadioGroup
    Left = 16
    Top = 8
    Width = 137
    Height = 146
    Caption = 'Opera'#231#245'es'
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
    TabOrder = 0
  end
  object CampoValor1: TEdit
    Left = 16
    Top = 179
    Width = 137
    Height = 21
    TabOrder = 1
  end
  object CampoValor2: TEdit
    Left = 16
    Top = 225
    Width = 137
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 252
    Width = 65
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 87
    Top = 252
    Width = 66
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 159
    Top = 8
    Width = 145
    Height = 269
    Caption = 'Hist'#243'rico de Opera'#231#245'es'
    TabOrder = 5
    object ListaResultado: TListBox
      Left = 11
      Top = 24
      Width = 121
      Height = 233
      ItemHeight = 13
      TabOrder = 0
    end
  end
end
