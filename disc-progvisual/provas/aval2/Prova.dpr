program Prova;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UQuestao1 in 'UQuestao1.pas' {FQuestao1},
  UQuestao2 in 'UQuestao2.pas' {FQuestao2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
