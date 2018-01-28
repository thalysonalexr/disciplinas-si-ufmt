unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB;

type
  TFPrincipal = class(TForm)
    MenuPrincipal: TMainMenu;
    abelas1: TMenuItem;
    Consultas1: TMenuItem;
    iposdeExamos1: TMenuItem;
    Conector: TADOConnection;
    iposdeConvnios1: TMenuItem;
    Cidades1: TMenuItem;
    Pacientes1: TMenuItem;
    Pacientes2: TMenuItem;
    Cidades2: TMenuItem;
    Convnios1: TMenuItem;
    Exames1: TMenuItem;
    Mdicos1: TMenuItem;
    Hospitais1: TMenuItem;
    MdicoseConvnios1: TMenuItem;
    Agendamentos: TMenuItem;
    ExamesMdicos1: TMenuItem;
    procedure iposdeExamos1Click(Sender: TObject);
    procedure iposdeConvnios1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Pacientes2Click(Sender: TObject);
    procedure Cidades2Click(Sender: TObject);
    procedure Convnios1Click(Sender: TObject);
    procedure Exames1Click(Sender: TObject);
    procedure Mdicos1Click(Sender: TObject);
    procedure Hospitais1Click(Sender: TObject);
    procedure MdicoseConvnios1Click(Sender: TObject);
    procedure AgendamentosClick(Sender: TObject);
    procedure ExamesMdicos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UTipoExames, UTiposConvenios, UCidades, UPacientes, UConsultaPacientes,
  UConsultaCidades, UConsultaConvenios, UConsultaExames, UMedicos, UHospitais,
  UMedicosConvenios, UAgendamentos, UExamesMedicos;

{$R *.dfm}

procedure TFPrincipal.AgendamentosClick(Sender: TObject);
begin
  try
    FAgendamentos := TFAgendamentos.Create(application);
    FAgendamentos.ShowModal;
  finally
    FAgendamentos.Free;
  end;
end;

procedure TFPrincipal.Cidades1Click(Sender: TObject);
begin
  try
    FCidades := TFCidades.Create(Application);
    FCidades.ShowModal;
  finally
    FCidades.Free;
  end;
end;

procedure TFPrincipal.Cidades2Click(Sender: TObject);
begin
  try
    FConsultaCidades := TFConsultaCidades.Create(Application);
    FConsultaCidades.ShowModal;
  finally
    FConsultaCidades.Free;
  end;
end;

procedure TFPrincipal.Convnios1Click(Sender: TObject);
begin
  try
    FConsultaConvenios := TFConsultaConvenios.Create(Application);
    FConsultaConvenios.ShowModal;
  finally
    FConsultaConvenios.Free;
  end;
end;

procedure TFPrincipal.Exames1Click(Sender: TObject);
begin
  try
    FConsultaExames := TFConsultaExames.Create(application);
    FConsultaExames.ShowModal;
  finally
    FConsultaExames.Free;
  end;
end;

procedure TFPrincipal.ExamesMdicos1Click(Sender: TObject);
begin
  try
    FExamesMedicos := TFExamesMedicos.Create(application);
    FExamesMedicos.Showmodal;
  finally
    FExamesMedicos.Free;
  end;
end;

procedure TFPrincipal.Hospitais1Click(Sender: TObject);
begin
  try
    FHospitais := TFHospitais.Create(application);
    FHospitais.showmodal;
  finally
    FHospitais.free;
  end;
end;

procedure TFPrincipal.iposdeConvnios1Click(Sender: TObject);
begin
  try
    FTiposConvenios := TFTiposConvenios.Create(Application);
    FTiposConvenios.ShowModal;
  finally
    FTiposConvenios.Free;
  end;
end;

procedure TFPrincipal.iposdeExamos1Click(Sender: TObject);
begin
  try
    FTiposExames := TFTiposExames.Create(Application);
    FTiposExames.ShowModal;
  finally
    FTiposExames.Free;
  end;
end;

procedure TFPrincipal.Mdicos1Click(Sender: TObject);
begin
  try
    FMedicos := TFMedicos.Create(application);
    FMedicos.showmodal;
  finally
    FMedicos.Free;
  end;
end;

procedure TFPrincipal.MdicoseConvnios1Click(Sender: TObject);
begin
  try
    FMedicosConvenios := TFMedicosConvenios.Create(application);
    FMedicosConvenios.ShowModal;
  finally
    FMedicosConvenios.Free;
  end;
end;

procedure TFPrincipal.Pacientes1Click(Sender: TObject);
begin
  try
    FPacientes := TFPacientes.Create(Application);
    FPacientes.ShowModal;
  finally
    FPacientes.Free;
  end;
end;

procedure TFPrincipal.Pacientes2Click(Sender: TObject);
begin
  try
    FConsultaPacientes := TFConsultaPacientes.Create(Application);
    FConsultaPacientes.ShowModal;
  finally
    FConsultaPacientes.Free;
  end;
end;

end.
