object FExercicio2: TFExercicio2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 02'
  ClientHeight = 255
  ClientWidth = 320
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
  object SpeedButton1: TSpeedButton
    Left = 240
    Top = 207
    Width = 72
    Height = 34
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 305
    Height = 193
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Sobre 1'
      object CampoTexto1: TEdit
        Left = 16
        Top = 40
        Width = 265
        Height = 21
        TabOrder = 0
      end
      object btnInverterStr: TButton
        Left = 96
        Top = 96
        Width = 97
        Height = 25
        Caption = 'Inverter texto'
        TabOrder = 1
        OnClick = btnInverterStrClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Sobre 2'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CampoTexto2: TEdit
        Left = 16
        Top = 40
        Width = 265
        Height = 21
        TabOrder = 0
      end
      object btnVogais: TButton
        Left = 96
        Top = 96
        Width = 97
        Height = 25
        Caption = 'Mostrar Vogais'
        TabOrder = 1
        OnClick = btnVogaisClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Sobre 3'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CampoTexto3: TEdit
        Left = 16
        Top = 40
        Width = 265
        Height = 21
        TabOrder = 0
      end
      object CampoTexto4: TEdit
        Left = 16
        Top = 80
        Width = 49
        Height = 21
        TabOrder = 1
      end
      object Button1: TButton
        Left = 184
        Top = 78
        Width = 97
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Sobre 4'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CampoTexto5: TEdit
        Left = 16
        Top = 16
        Width = 265
        Height = 21
        TabOrder = 0
      end
      object ListBox1: TListBox
        Left = 16
        Top = 43
        Width = 161
        Height = 97
        ItemHeight = 13
        TabOrder = 1
      end
      object btnCortar: TButton
        Left = 191
        Top = 80
        Width = 90
        Height = 25
        Caption = 'Cortar em linhas'
        TabOrder = 2
        OnClick = btnCortarClick
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Sobre 5'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object btnInverter: TButton
        Left = 192
        Top = 64
        Width = 75
        Height = 25
        Caption = 'Inverter'
        TabOrder = 0
        OnClick = btnInverterClick
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Sobre 6'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lista1: TListBox
        Left = 16
        Top = 24
        Width = 121
        Height = 97
        ItemHeight = 13
        PopupMenu = PopupMenu1
        TabOrder = 0
      end
      object lista2: TListBox
        Left = 160
        Top = 24
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 1
      end
      object btnInverter2: TButton
        Left = 112
        Top = 127
        Width = 75
        Height = 25
        Caption = 'Inverter'
        TabOrder = 2
        OnClick = btnInverter2Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 32
    object Inserir1: TMenuItem
      Caption = 'Inserir'
      OnClick = Inserir1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
end
