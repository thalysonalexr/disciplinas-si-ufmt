unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB;

type
  TFPrincipal = class(TForm)
    ConexaoBanco: TADOConnection;
    MainMenu1: TMainMenu;
    abelas1: TMenuItem;
    reasdePlantio1: TMenuItem;
    EquipamentoUtilizados1: TMenuItem;
    OrdensdeServio1: TMenuItem;
    Consultas1: TMenuItem;
    Consultar1: TMenuItem;
    Fazendas1: TMenuItem;
    Equipamentos1: TMenuItem;
    ResponsveisTcnicos1: TMenuItem;
    procedure reasdePlantio1Click(Sender: TObject);
    procedure EquipamentoUtilizados1Click(Sender: TObject);
    procedure OrdensdeServio1Click(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure Fazendas1Click(Sender: TObject);
    procedure Equipamentos1Click(Sender: TObject);
    procedure ResponsveisTcnicos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UAreaPlantio, UEquipamentosUtil, UOrdensServicos, UConsultas,
  UEquipamentos, UFazendas, UResponsaveis;

{$R *.dfm}

procedure TFPrincipal.Consultar1Click(Sender: TObject);
begin
  try
    Fconsultas := TFConsultas.Create(application);
    Fconsultas.ShowModal;
  finally
    FConsultas.Free;
  end;
end;

procedure TFPrincipal.Equipamentos1Click(Sender: TObject);
begin
  try
    FEquipamentos := TFEquipamentos.create(application);
    FEquipamentos.showmodal;
  finally
    FEquipamentos.free;
  end;
end;

procedure TFPrincipal.EquipamentoUtilizados1Click(Sender: TObject);
begin
  try
    FEquipamentosUtil := TFEquipamentosUtil.Create(application);
    FEquipamentosUtil.showmodal;
  finally
    FEquipamentosUtil.free;
  end;
end;

procedure TFPrincipal.Fazendas1Click(Sender: TObject);
begin
  try
    FFazendas := TFFazendas.create(application);
    FFazendas.showmodal;
  finally
    FFazendas.free;
  end;
end;

procedure TFPrincipal.OrdensdeServio1Click(Sender: TObject);
begin
  try
    FOrdensServ := TFOrdensServ.Create(application);
    FOrdensServ.ShowModal;
  finally
    FOrdensServ.Free;
  end;
end;

procedure TFPrincipal.reasdePlantio1Click(Sender: TObject);
begin
  try
    FAreaPlantio := TFAreaPlantio.Create(application);
    FAreaPlantio.ShowModal;
  finally
    FAreaPlantio.Free;
  end;
end;

procedure TFPrincipal.ResponsveisTcnicos1Click(Sender: TObject);
begin
  try
    FRespTec := TFRespTec.Create(Application);
    FRespTec.ShowModal;
  finally
    FResptec.free;
  end;
end;

end.
