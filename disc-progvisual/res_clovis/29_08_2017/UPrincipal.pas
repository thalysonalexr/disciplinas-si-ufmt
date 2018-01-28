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
    iposdeExames1: TMenuItem;
    Conector: TADOConnection;
    iposdeConvnios1: TMenuItem;
    Cidades1: TMenuItem;
    Pacientes1: TMenuItem;
    Pacientes2: TMenuItem;
    procedure iposdeExames1Click(Sender: TObject);
    procedure iposdeConvnios1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Pacientes2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UTiposExames, UTiposConvenios, UCidades, UPacientes, UConultaPacientes;

{$R *.dfm}

procedure TFPrincipal.Cidades1Click(Sender: TObject);
begin
  try
    FCidades:=TFCidades.Create(application);
    FCidades.ShowModal;
  finally
    FCidades.free;
  end;
end;

procedure TFPrincipal.iposdeConvnios1Click(Sender: TObject);
begin
  try
    FTiposConvenios:=TFTiposConvenios.Create(application);
    FTiposConvenios.ShowModal;
  finally
    FTiposConvenios.free;
  end;
end;

procedure TFPrincipal.iposdeExames1Click(Sender: TObject);
begin
  try
    FTiposExames:=TFTiposExames.Create(application);
    FTiposExames.ShowModal;
  finally
    FTiposExames.free;
  end;
end;

procedure TFPrincipal.Pacientes1Click(Sender: TObject);
begin
  try
    FPacientes:=TFPacientes.Create(application);
    FPacientes.ShowModal;
  finally
    FPacientes.free;
  end;
end;

procedure TFPrincipal.Pacientes2Click(Sender: TObject);
begin
  try
    FConsultaPacientes:=TFConsultaPacientes.Create(application);
    FConsultaPacientes.ShowModal;
  finally
    FConsultaPacientes.free;
  end;
end;

end.
