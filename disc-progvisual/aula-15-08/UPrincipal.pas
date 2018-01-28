unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, Buttons;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exerccios1: TMenuItem;
    Consultas: TMenuItem;
    Cadastros: TMenuItem;
    CadastroAlunos: TMenuItem;
    LolcalMysql: TADOConnection;
    ConsultaAlunosID: TMenuItem;
    ConsultaAlunosNome: TMenuItem;
    CadastroCidades: TMenuItem;
    btnSair: TSpeedButton;
    ConsultaCidades: TMenuItem;
    procedure CadastroAlunosClick(Sender: TObject);
    procedure CadastroCidadesClick(Sender: TObject);
    procedure ConsultaAlunosIDClick(Sender: TObject);
    procedure ConsultaAlunosNomeClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure ConsultaCidadesClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UAlunos, UCidades, UConsultaAlunosMatricula, UConsultaAlunosNome, UConsultaCidades;

{$R *.dfm}

procedure TFPrincipal.CadastroAlunosClick(Sender: TObject);
begin
  try
    FALunos := TFALunos.Create(Application);
    FALunos.ShowModal;
  finally
    FALunos.Free;
  end;
end;

procedure TFPrincipal.CadastroCidadesClick(Sender: TObject);
begin
  try
    FCidades := TFCidades.Create(Application);
    FCidades.ShowModal;
  finally
    FCidades.Free;
  end;
end;

procedure TFPrincipal.ConsultaAlunosIDClick(Sender: TObject);
begin
  try
    FConsultaAlunosMatricula := TFConsultaAlunosMatricula.Create(Application);
    FConsultaAlunosMatricula.ShowModal;
  finally
    FConsultaAlunosMatricula.Free;
  end;
end;

procedure TFPrincipal.ConsultaAlunosNomeClick(Sender: TObject);
begin
  try
    FConsultaAlunosNome := TFConsultaAlunosNome.Create(Application);
    FConsultaAlunosNome.ShowModal;
  finally
    FConsultaAlunosNome.Free;
  end;
end;

procedure TFPrincipal.ConsultaCidadesClick(Sender: TObject);
begin
  try
    FConsultaCidades := TFConsultaCidades.Create(Application);
    FConsultaCidades.ShowModal;
  finally
    FConsultaCidades.Free;
  end;
end;

procedure TFPrincipal.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
