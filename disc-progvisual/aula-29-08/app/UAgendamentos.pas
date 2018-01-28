unit UAgendamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ADODB, ComCtrls;

type
  TFAgendamentos = class(TForm)
    QueryHospitais: TADOQuery;
    GrupoDados: TGroupBox;
    DataAgendamentos: TDataSource;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    QueryPacientes: TADOQuery;
    QueryMedicos: TADOQuery;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    QueryAgendamentos: TADOQuery;
    QueryAgendamentosidAgendamento: TAutoIncField;
    QueryAgendamentosidPaciente: TIntegerField;
    QueryAgendamentosidHospital: TIntegerField;
    QueryAgendamentosidMedico: TIntegerField;
    QueryAgendamentosDataAgendamento: TDateField;
    QueryAgendamentosLookup_Medicos: TStringField;
    QueryAgendamentosLookup_Hospitais: TStringField;
    Label1: TLabel;
    DBData: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    QueryAgendamentosLookup_Pacientes: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AcaoControle(acao: boolean);
  end;

var
  FAgendamentos: TFAgendamentos;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFAgendamentos.AcaoControle;
begin
  btnInserir.Enabled   := acao;
  btnAlterar.Enabled   := acao;
  btnExcluir.Enabled   := acao;
  btnConfirmar.Enabled := not acao;
  btnCancelar.Enabled  := not acao;
  btnSair.Enabled      := acao;
  GrupoLista.Enabled   := acao;
  GrupoDados.Enabled   := not acao;
end;

procedure TFAgendamentos.btnInserirClick(Sender: TObject);
begin
  AcaoControle(false);
  DBData.SetFocus;
  QueryAgendamentos.Append;
end;

procedure TFAgendamentos.btnAlterarClick(Sender: TObject);
begin
  AcaoControle(false);
  DBData.SetFocus;
  QueryAgendamentos.Edit;
end;

procedure TFAgendamentos.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confimar exclusão?',mtwarning,[mbyes,mbno],0)=mryes) then
  begin
    QueryAgendamentos.Delete;
    QueryAgendamentos.Close;
    QueryAgendamentos.Open;
  end;
end;

procedure TFAgendamentos.btnConfirmarClick(Sender: TObject);
begin
  AcaoControle(true);
  QueryAgendamentos.Post;
end;

procedure TFAgendamentos.btnCancelarClick(Sender: TObject);
begin
  AcaoControle(true);
  QueryAgendamentos.Cancel;
  QueryAgendamentos.Close;
  QueryAgendamentos.Open;
end;

procedure TFAgendamentos.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
