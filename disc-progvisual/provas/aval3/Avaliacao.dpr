program Avaliacao;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UResponsaveis in 'UResponsaveis.pas' {FRespTec},
  UFazendas in 'UFazendas.pas' {FFazendas},
  UEquipamentosUtil in 'UEquipamentosUtil.pas' {FEquipamentosUtil},
  UConsultas in 'UConsultas.pas' {FConsultas},
  UAreaPlantio in 'UAreaPlantio.pas' {FAreaPlantio},
  UOrdensServicos in 'UOrdensServicos.pas' {FOrdensServ},
  UEquipamentos in 'UEquipamentos.pas' {FEquipamentos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
