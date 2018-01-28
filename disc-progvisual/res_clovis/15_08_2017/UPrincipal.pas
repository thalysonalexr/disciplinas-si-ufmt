unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exrccios1: TMenuItem;
    Vendedores1: TMenuItem;
    OracleLocal: TADOConnection;
    Alunos1: TMenuItem;
    Cidades1: TMenuItem;
    Alunos2: TMenuItem;
    Nome1: TMenuItem;
    procedure Alunos1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Alunos2Click(Sender: TObject);
    procedure Nome1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UVendedores, UAlunos, UCidades, UConsultaAlunos, UConsultaAlunosNome;

{$R *.dfm}

procedure TFPrincipal.Alunos1Click(Sender: TObject);
begin
  try
    FAlunos:=TFAlunos.create(application);
    FAlunos.ShowModal;
  finally
    FAlunos.Free;
  end;
end;

procedure TFPrincipal.Alunos2Click(Sender: TObject);
begin
  try
    FConsultaAlunos:=TFConsultaAlunos.create(application);
    FConsultaAlunos.ShowModal;
  finally
    FConsultaAlunos.Free;
  end;
end;

procedure TFPrincipal.Cidades1Click(Sender: TObject);
begin
  try
    FCidades:=TFCidades.create(application);
    FCidades.ShowModal;
  finally
    FCidades.Free;
  end;
end;

procedure TFPrincipal.Nome1Click(Sender: TObject);
begin
  try
    FConsultaAlunosNome:=TFConsultaAlunosNome.create(application);
    FConsultaAlunosNome.ShowModal;
  finally
    FConsultaAlunosNome.Free;
  end;
end;

end.
