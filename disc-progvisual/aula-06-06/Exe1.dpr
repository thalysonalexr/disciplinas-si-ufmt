program Exe1;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UExe1 in 'UExe1.pas' {FExe1},
  UExe2 in 'UExe2.pas' {FExe2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFExe1, FExe1);
  Application.CreateForm(TFExe2, FExe2);
  Application.Run;
end.
