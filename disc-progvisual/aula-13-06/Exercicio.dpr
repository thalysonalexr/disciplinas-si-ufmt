program Exercicio;

uses
  Forms,
  UExercicio in 'UExercicio.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
