object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Sistema Estudantil - SE'
  ClientHeight = 162
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnSair: TSpeedButton
    Left = 224
    Top = 104
    Width = 79
    Height = 38
    Caption = 'Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnSairClick
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object Exerccios1: TMenuItem
      Caption = 'Tabelas'
      object Cadastros: TMenuItem
        Caption = 'Cadastros'
        object CadastroAlunos: TMenuItem
          Caption = 'Alunos'
          OnClick = CadastroAlunosClick
        end
        object CadastroCidades: TMenuItem
          Caption = 'Cidades'
          OnClick = CadastroCidadesClick
        end
      end
      object Consultas: TMenuItem
        Caption = 'Consultas'
        object ConsultaAlunosID: TMenuItem
          Caption = 'Alunos por Matr'#237'cula'
          OnClick = ConsultaAlunosIDClick
        end
        object ConsultaAlunosNome: TMenuItem
          Caption = 'Alunos por Nome'
          OnClick = ConsultaAlunosNomeClick
        end
        object ConsultaCidades: TMenuItem
          Caption = 'Cidades'
          OnClick = ConsultaCidadesClick
        end
      end
    end
  end
  object LolcalMysql: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;User I' +
      'D=root;Data Source=localMySQL;Initial Catalog=lpv'
    LoginPrompt = False
    Left = 56
    Top = 8
  end
end
