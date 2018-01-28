program Exercicios;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  UExercicio1 in 'UExercicio1.pas' {FExercicio01},
  UExercicio2 in 'UExercicio2.pas' {FExercicio02},
  UExercicio3 in 'UExercicio3.pas' {FExercicio03},
  UExercicio4 in 'UExercicio4.pas' {FExercicio04},
  UExercicio5 in 'UExercicio5.pas' {FExercicio05};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFExercicio01, FExercicio01);
  Application.CreateForm(TFExercicio02, FExercicio02);
  Application.CreateForm(TFExercicio03, FExercicio03);
  Application.CreateForm(TFExercicio04, FExercicio04);
  Application.CreateForm(TFExercicio05, FExercicio05);
  Application.Run;
end.
