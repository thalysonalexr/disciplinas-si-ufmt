program Revisao2017_1;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UCidades in 'UCidades.pas' {FCidades},
  UTipoExames in 'UTipoExames.pas' {FTiposExames},
  UConsultaPacientes in 'UConsultaPacientes.pas' {FConsultaPacientes},
  UTiposConvenios in 'UTiposConvenios.pas' {FTiposConvenios},
  UAgendamentos in 'UAgendamentos.pas' {FAgendamentos},
  UConsultaExames in 'UConsultaExames.pas' {FConsultaExames},
  UConsultaCidades in 'UConsultaCidades.pas' {FConsultaCidades},
  UConsultaConvenios in 'UConsultaConvenios.pas' {FConsultaConvenios},
  UMedicosConvenios in 'UMedicosConvenios.pas' {FMedicosConvenios},
  UMedicos in 'UMedicos.pas' {FMedicos},
  UExamesMedicos in 'UExamesMedicos.pas' {FExamesMedicos},
  UPacientes in 'UPacientes.pas' {FPacientes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
