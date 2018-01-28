program ListaExercicios;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UExe5 in 'UExe5.pas' {FExe5},
  UExe2 in 'UExe2.pas' {FExe2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
