program p_principal;

uses
  Forms,
  u_principal in 'u_principal.pas' {FPrincipal},
  u_exe1 in 'u_exe1.pas' {FExe1},
  u_exe2 in 'u_exe2.pas' {FExe2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
