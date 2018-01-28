program Project2;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  UExe1 in 'UExe1.pas' {FExe1},
  UExe2 in 'UExe2.pas' {FExe2},
  UExe3 in 'UExe3.pas' {FExe3},
  UExe4 in 'UExe4.pas' {FExe4},
  UExe5 in 'UExe5.pas' {FExe5},
  UExe6 in 'UExe6.pas' {FExe6},
  UExe7 in 'UExe7.pas' {FExe7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
