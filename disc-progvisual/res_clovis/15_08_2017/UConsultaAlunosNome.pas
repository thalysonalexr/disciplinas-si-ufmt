unit UConsultaAlunosNome;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TFConsultaAlunosNome = class(TForm)
    QueryConsulta: TADOQuery;
    DataConsulta: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    CampoNome: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaAlunosNome: TFConsultaAlunosNome;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFConsultaAlunosNome.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TFConsultaAlunosNome.Button2Click(Sender: TObject);
begin
  QueryConsulta.close;
  QueryConsulta.Parameters.ParamByName('nome').Value:=CampoNome.Text+'%';
  QueryConsulta.Open;

  if QueryConsulta.RecordCount=0 then
    messagedlg('Nome Não Encontrado',mtwarning,[mbok],0);
end;

end.
