unit UAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ADODB, ExtCtrls;

type
  TFAlunos = class(TForm)
    QueryAlunos: TADOQuery;
    QueryAlunosmatricula: TIntegerField;
    QueryAlunosnome: TStringField;
    DataAlunos: TDataSource;
    DBGridAlunos: TDBGrid;
    GrupoDados: TGroupBox;
    Label2: TLabel;
    DBNome: TDBEdit;
    DBSexo: TDBRadioGroup;
    DBEstadoCivil: TDBRadioGroup;
    QueryAlunossexo: TStringField;
    QueryAlunosestadoCivil: TIntegerField;
    QueryAlunosidcidade: TIntegerField;
    QueryCidades: TADOQuery;
    QueryCidadesIDCidade: TIntegerField;
    QueryCidadesNome: TStringField;
    QueryCidadesSigla: TStringField;
    QueryAlunosLookupCidades: TStringField;
    Label3: TLabel;
    DBLookupCidades: TDBLookupComboBox;
    QueryAlunosCalcSexo: TStringField;
    QueryAlunosCalcEstCivil: TStringField;
    Operacoes: TGroupBox;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    QueryAlunosCPF: TStringField;
    Label4: TLabel;
    DBCPF: TDBEdit;
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure QueryAlunosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Botoes(acao: Boolean);
  end;

var
  FAlunos: TFAlunos;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFAlunos.Botoes(acao: Boolean);
begin
  btnInserir.Enabled := acao;
  btnEditar .Enabled := acao;
  btnExcluir .Enabled := acao;
  btnConfirmar .Enabled := not acao;
  btnCancelar .Enabled := not acao;
  btnSair      .Enabled := acao;
  DBGridAlunos .Enabled := acao;
  GrupoDados  .Enabled := not acao;
end;

procedure TFAlunos.btnInserirClick(Sender: TObject);
begin
  botoes(false);
  DBNome.SetFocus;
  QueryAlunos.Append;
end;

procedure TFAlunos.btnEditarClick(Sender: TObject);
begin
  botoes(false);
  DBNome.SetFocus;
  QueryAlunos.Edit;
end;

procedure TFAlunos.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confirmar exclusão?',mtconfirmation,[mbYes,mbno],0)=mryes) then
  begin
    QueryAlunos.Delete;
    QueryAlunos.Close;
    QueryAlunos.Open;
  end;
end;

procedure TFAlunos.btnConfirmarClick(Sender: TObject);
begin
  QueryAlunos.Post;
  Botoes(true);
end;

procedure TFAlunos.btnCancelarClick(Sender: TObject);
begin
  QueryAlunos.Cancel;
  Botoes(true);
end;

procedure TFAlunos.btnSairClick(Sender: TObject);
begin
  Close;
end;


procedure TFAlunos.QueryAlunosCalcFields(DataSet: TDataSet);
begin
  if (QueryAlunossexo.Value = 'M') then
    QueryAlunosCalcSexo.Value := 'Masculino'
  else if (QueryAlunossexo.Value = 'F') then
    QueryAlunosCalcSexo.Value := 'Feminino';

  case (QueryAlunosestadoCivil.Value) of
    1: QueryAlunosCalcEstCivil.Value := 'Solteiro(a)';
    2: QueryAlunosCalcEstCivil.Value := 'Casado(a)';
    3: QueryAlunosCalcEstCivil.Value := 'Divorciado(a)';
    4: QueryAlunosCalcEstCivil.Value := 'Viúvo(a)';
  end;
end;

end.
