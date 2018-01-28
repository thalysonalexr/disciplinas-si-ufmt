program PExe;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UExe1 in 'UExe1.pas' {FExe1},
  UExe2 in 'UExe2.pas' {FExe2},
  UExe3 in 'UExe3.pas' {FExe3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
