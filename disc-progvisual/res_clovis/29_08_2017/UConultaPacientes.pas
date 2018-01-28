unit UConultaPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ADODB, Buttons, ExtCtrls,
  ComCtrls;

type
  TFConsultaPacientes = class(TForm)
    QueryPacientes: TADOQuery;
    DataPacientes: TDataSource;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BConsultar: TSpeedButton;
    BSair: TSpeedButton;
    QueryPacientesidPaciente: TAutoIncField;
    QueryPacientesidTiposConvenio: TIntegerField;
    QueryPacientesidCidade: TIntegerField;
    QueryPacientesNomePaciente: TStringField;
    QueryPacientesNascimento: TDateField;
    QueryPacientesnome: TStringField;
    QueryPacientesnomecidade: TStringField;
    CampoNome: TEdit;
    Label1: TLabel;
    DataInicial: TDateTimePicker;
    DataFinal: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    procedure BSairClick(Sender: TObject);
    procedure BConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaPacientes: TFConsultaPacientes;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFConsultaPacientes.BConsultarClick(Sender: TObject);
var dia,mes,ano:word;
begin
QueryPacientes.Close;
QueryPacientes.SQL.Clear;
QueryPacientes.SQL.add('select p.*,t.nome,c.nomecidade');
QueryPacientes.SQL.add('from pacientes p,tiposconvenios t, cidades c');
QueryPacientes.SQL.add('where c.idcidade=p.idcidade');
QueryPacientes.SQL.add('and p.idtiposconvenio=t.idtiposconvenio');
if (CampoNome.Text<>'') then
 QueryPacientes.SQL.add('and p.nomepaciente like '+QuotedStr(CampoNome.Text+'%'));
if (DataInicial.Checked) then
begin
 DecodeDate(DataInicial.date,ano,mes,dia);
 QueryPacientes.SQL.add('and p.nascimento>='+QuotedStr(inttostr(ano)+'-'+inttostr(mes)+'-'+inttostr(dia)));
end;
if (DataFinal.Checked) then
begin
  DecodeDate(DataFinal.date,ano,mes,dia);
  QueryPacientes.SQL.add('and p.nascimento<='+QuotedStr(inttostr(ano)+'-'+inttostr(mes)+'-'+inttostr(dia)));
end;
 QueryPacientes.open;
end;

procedure TFConsultaPacientes.BSairClick(Sender: TObject);
begin
  close;
end;

end.
