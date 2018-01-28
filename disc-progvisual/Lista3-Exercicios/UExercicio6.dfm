object FExercicio6: TFExercicio6
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 06'
  ClientHeight = 209
  ClientWidth = 317
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
  object btnContaSPC: TButton
    Left = 208
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Contar SPC'
    TabOrder = 0
    OnClick = btnContaSPCClick
  end
  object btnContarCHAR: TButton
    Left = 56
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Contar CHAR'
    TabOrder = 1
    OnClick = btnContarCHARClick
  end
  object Edit1: TEdit
    Left = 25
    Top = 162
    Width = 25
    Height = 21
    TabOrder = 2
  end
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 8
    object Inserir: TMenuItem
      Caption = 'Inserir'
      OnClick = InserirClick
    end
    object Excluir: TMenuItem
      Caption = 'Excluir'
      OnClick = ExcluirClick
    end
  end
end
