program Exercicios;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UCidades in 'UCidades.pas' {FCidades},
  UAlunos in 'UAlunos.pas' {FAlunos},
  UConsultaAlunosMatricula in 'UConsultaAlunosMatricula.pas' {FConsultaAlunosMatricula},
  UConsultaAlunosNome in 'UConsultaAlunosNome.pas' {FConsultaAlunosNome},
  UConsultaCidades in 'UConsultaCidades.pas' {FConsultaCidades};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
