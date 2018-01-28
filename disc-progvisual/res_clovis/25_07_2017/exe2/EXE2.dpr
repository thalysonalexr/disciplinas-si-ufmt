program EXE2;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UBanco in 'UBanco.pas' {FBanco},
  UPesquisas in 'UPesquisas.pas' {FPesquisas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
