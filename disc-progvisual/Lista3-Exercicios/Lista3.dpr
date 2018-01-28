program Lista3;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UExercicio1 in 'UExercicio1.pas' {FExercicio1},
  UExercicio3 in 'UExercicio3.pas' {FExercicio3},
  UExercicio4 in 'UExercicio4.pas' {FExercicio4},
  UExercicio5 in 'UExercicio5.pas' {FExercicio5},
  UExercicio6 in 'UExercicio6.pas' {FExercicio6},
  UExercicio7 in 'UExercicio7.pas' {FExercicio7},
  UExercicio2 in 'UExercicio2.pas' {FExercicio2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
