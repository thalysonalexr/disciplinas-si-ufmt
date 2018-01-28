program ProjetoCidades;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UEstados in 'UEstados.pas' {FCadEstados},
  UCidades in 'UCidades.pas' {FCadCidades};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFCadCidades, FCadCidades);
  Application.Run;
end.
