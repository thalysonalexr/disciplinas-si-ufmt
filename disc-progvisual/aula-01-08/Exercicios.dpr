program Exercicios;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UExercicio1 in 'UExercicio1.pas' {FExercicio1},
  UExercicio2 in 'UExercicio2.pas' {FExercicio2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
