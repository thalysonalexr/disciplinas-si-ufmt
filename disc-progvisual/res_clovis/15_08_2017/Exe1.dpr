program Exe1;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UVendedores in 'UVendedores.pas' {FVendedores},
  UAlunos in 'UAlunos.pas' {FAlunos},
  UCidades in 'UCidades.pas' {FCidades},
  UConsultaAlunos in 'UConsultaAlunos.pas' {FConsultaAlunos},
  UConsultaAlunosNome in 'UConsultaAlunosNome.pas' {FConsultaAlunosNome};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
