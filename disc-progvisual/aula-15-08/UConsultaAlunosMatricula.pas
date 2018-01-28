unit UConsultaAlunosMatricula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TFConsultaAlunosMatricula = class(TForm)
    QueryConsultar: TADOQuery;
    DataConsulta: TDataSource;
    DBGrid1: TDBGrid;
    Campos: TGroupBox;
    CampoMatricula: TEdit;
    Label1: TLabel;
    Operacoes: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    QueryConsultarcalcSexo: TStringField;
    QueryConsultarcalcEstCivil: TStringField;
    QueryConsultarSexo: TStringField;
    QueryConsultarEstadoCivil: TIntegerField;
    QueryConsultarMatricula: TAutoIncField;
    QueryConsultarNome: TStringField;
    QueryConsultarCPF: TStringField;
    QueryConsultaridCidade: TIntegerField;
    QueryCidades: TADOQuery;
    QueryCidadesidCidade: TAutoIncField;
    QueryCidadesNome: TStringField;
    QueryCidadesSigla: TStringField;
    QueryConsultarLookupCidades: TStringField;
    QueryConsultarLookupEstados: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure QueryConsultarCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaAlunosMatricula: TFConsultaAlunosMatricula;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFConsultaAlunosMatricula.Button1Click(Sender: TObject);
begin
  QueryConsultar.Close;
  QueryConsultar.Parameters.ParamByName('mat').Value := strtoint(CampoMatricula.Text);
  QueryConsultar.Open;
  
  if (QueryConsultar.RecordCount=0) then
    MessageDlg('Nenhuma matrícula registrada para o código "'+CampoMatricula.Text+'"', mtWarning, [mbok], 0);
end;

procedure TFConsultaAlunosMatricula.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFConsultaAlunosMatricula.QueryConsultarCalcFields(DataSet: TDataSet);
begin
  if (QueryConsultarSexo.Value = 'M') then
    QueryConsultarcalcSexo.Value := 'Masculino'
  else if (QueryConsultarSexo.Value = 'F') then
    QueryConsultarcalcSexo.Value := 'Feminino';

  case (QueryConsultarEstadoCivil.Value) of
    1: QueryConsultarCalcEstCivil.Value := 'Solteiro(a)';
    2: QueryConsultarCalcEstCivil.Value := 'Casado(a)';
    3: QueryConsultarCalcEstCivil.Value := 'Divorciado(a)';
    4: QueryConsultarCalcEstCivil.Value := 'Viúvo(a)';
  end;
end;

end.
