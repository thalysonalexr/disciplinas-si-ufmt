program Aval1_2017_1;

uses
  Forms,
  UQuestao2 in 'UQuestao2.pas' {FQuestao2},
  UQuestao1 in 'UQuestao1.pas' {FQuestao1},
  UPrincipal in 'UPrincipal.pas' {FPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
