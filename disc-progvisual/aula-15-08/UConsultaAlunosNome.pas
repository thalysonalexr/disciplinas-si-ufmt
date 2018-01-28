unit UConsultaAlunosNome;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TFConsultaAlunosNome = class(TForm)
    DataConsulta: TDataSource;
    QueryConsultar: TADOQuery;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    CampoNome: TEdit;
    Label1: TLabel;
    QueryConsultarMatricula: TAutoIncField;
    QueryConsultarNome: TStringField;
    QueryConsultarSexo: TStringField;
    QueryConsultarEstadoCivil: TIntegerField;
    QueryConsultarCPF: TStringField;
    QueryConsultaridCidade: TIntegerField;
    QueryConsultarcalcSexo: TStringField;
    QueryConsultarcalcEstCivil: TStringField;
    QueryCidades: TADOQuery;
    QueryCidadesidCidade: TAutoIncField;
    QueryCidadesNome: TStringField;
    QueryCidadesSigla: TStringField;
    QueryConsultarLookupCidades: TStringField;
    QueryConsultarLookupEstados: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure QueryConsultarCalcFields(DataSet: TDataSet);
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
  QueryConsultar.Close;
  QueryConsultar.Parameters.ParamByName('nome').Value := CampoNome.Text+'%';
  QueryConsultar.Open;

  if (QueryConsultar.RecordCount=0) then
    MessageDlg('Nome não encontrado!', mtWarning, [mbok], 0);

end;

procedure TFConsultaAlunosNome.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFConsultaAlunosNome.QueryConsultarCalcFields(DataSet: TDataSet);
begin
  if (QueryConsultarSexo.Value = 'M') then
    QueryConsultarcalcSexo.Value := 'Masculino'
  else if (QueryConsultarSexo.Value = 'F') then
    QueryConsultarcalcSexo.Value := 'Feminino';

  case (QueryConsultarEstadoCivil.Value) of
    1: QueryConsultarcalcEstCivil.Value := 'Solteiro(a)';
    2: QueryConsultarcalcEstCivil.Value := 'Casado(a)';
    3: QueryConsultarcalcEstCivil.Value := 'Divorciado(a)';
    4: QueryConsultarcalcEstCivil.Value := 'Viúvo(a)';
  end;
end;

end.
