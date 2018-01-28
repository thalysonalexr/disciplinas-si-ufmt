program Exercicios_Cidades;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UPaises in 'UPaises.pas' {FPaises},
  UEstados in 'UEstados.pas' {FEstados};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFPaises, FPaises);
  Application.CreateForm(TFEstados, FEstados);
  Application.Run;
end.
