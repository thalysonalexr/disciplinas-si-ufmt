unit UConsultaPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ADODB, ComCtrls;

type
  TFConsultaPacientes = class(TForm)
    QueryPacientes: TADOQuery;
    DataTipos: TDataSource;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    QueryPacientesidPaciente: TAutoIncField;
    QueryPacientesidTiposConvenio: TIntegerField;
    QueryPacientesidCidade: TIntegerField;
    QueryPacientesNomePaciente: TStringField;
    QueryPacientesNascimento: TDateField;
    GrupoPesquisa: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    CampoNome: TEdit;
    Label3: TLabel;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    QueryCidades: TADOQuery;
    QueryTipos: TADOQuery;
    QueryPacienteslook_convenios: TStringField;
    QueryPacienteslook_cidades: TStringField;
    DataInicial: TDateTimePicker;
    DataFinal: TDateTimePicker;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

procedure TFConsultaPacientes.Button1Click(Sender: TObject);
var dia, mes, ano: Word;
begin
  QueryPacientes.Close;
  QueryPacientes.SQL.Clear;
  QueryPacientes.SQL.Add('select p.*, ci.nomecidade, co.nome');
  QueryPacientes.SQL.Add('from pacientes p, cidades ci, tiposconvenios co');
  QueryPacientes.SQL.Add('where p.idcidade=ci.idcidade');
  QueryPacientes.SQL.Add('and p.idtiposconvenio=co.idtiposconvenio');
  if (CampoNome.Text<>'') then
    QueryPacientes.SQL.Add('and upper(p.nomepaciente) like upper('+QuotedStr(CampoNome.Text+'%')+')');
  if (DataInicial.Checked) then
  begin
    DecodeDate(DataInicial.Date,ano,mes,dia);
    QueryPacientes.SQL.Add('and p.nascimento >= '+QuotedStr(inttostr(ano)+'-'+inttostr(mes)+'-'+inttostr(dia)));
  end;
  if (DataFinal.Checked) then
  begin
    DecodeDate(DataInicial.Date,ano,mes,dia);
    QueryPacientes.SQL.Add('and p.nascimento <= '+QuotedStr(inttostr(ano)+'-'+inttostr(mes)+'-'+inttostr(dia)));
  end;
  QueryPacientes.Open;
end;

procedure TFConsultaPacientes.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
