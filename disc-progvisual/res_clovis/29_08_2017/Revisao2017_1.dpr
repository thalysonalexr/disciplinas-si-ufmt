program Revisao2017_1;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UTiposExames in 'UTiposExames.pas' {FTiposExames},
  UTiposConvenios in 'UTiposConvenios.pas' {FTiposConvenios},
  UCidades in 'UCidades.pas' {FCidades},
  UConultaPacientes in 'UConultaPacientes.pas' {FConsultaPacientes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
