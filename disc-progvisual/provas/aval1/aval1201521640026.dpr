program aval1201521640026;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UResolucao1 in 'UResolucao1.pas' {FResolucao1},
  UResolucao2 in 'UResolucao2.pas' {FResolucao2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFResolucao1, FResolucao1);
  Application.CreateForm(TFResolucao2, FResolucao2);
  Application.Run;
end.
