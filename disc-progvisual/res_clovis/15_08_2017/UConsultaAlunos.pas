unit UConsultaAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ADODB;

type
  TFConsultaAlunos = class(TForm)
    QueryConsulta: TADOQuery;
    DBGrid1: TDBGrid;
    DataConsulta: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    CampoMatricula: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaAlunos: TFConsultaAlunos;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFConsultaAlunos.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TFConsultaAlunos.Button2Click(Sender: TObject);
begin
  QueryConsulta.close;
  QueryConsulta.Parameters.ParamByName('mat').Value:=strtoint(CampoMatricula.Text);
  QueryConsulta.Open;

  if QueryConsulta.RecordCount=0 then
    messagedlg('Matricula Não Encontrada',mtwarning,[mbok],0);
  
end;

end.
