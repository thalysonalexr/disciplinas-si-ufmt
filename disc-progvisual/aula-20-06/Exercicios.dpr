program Exercicios;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UExercicio1 in 'UExercicio1.pas' {FExercicio1},
  UExercicio2 in 'UExercicio2.pas' {FExercicio2},
  UExercicio3 in 'UExercicio3.pas' {FExercicio3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFExercicio1, FExercicio1);
  Application.CreateForm(TFExercicio2, FExercicio2);
  Application.CreateForm(TFExercicio3, FExercicio3);
  Application.Run;
end.
