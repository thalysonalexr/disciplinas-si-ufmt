unit UPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ADODB, ComCtrls;

type
  TFPacientes = class(TForm)
    QueryPacientes: TADOQuery;
    GrupoDados: TGroupBox;
    Label1: TLabel;
    DBNomePaciente: TDBEdit;
    DataPacientes: TDataSource;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    QueryTipos: TADOQuery;
    QueryCidades: TADOQuery;
    QueryPacientesidPaciente: TAutoIncField;
    QueryPacientesidTiposConvenio: TIntegerField;
    QueryPacientesidCidade: TIntegerField;
    QueryPacientesNomePaciente: TStringField;
    QueryPacientesNascimento: TDateField;
    Label2: TLabel;
    QueryPacienteslook_convenios: TStringField;
    QueryPacienteslook_cidades: TStringField;
    Label3: TLabel;
    DBLookupConvenio: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupCidade: TDBLookupComboBox;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    DBEdit1: TDBEdit;
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
  FPacientes: TFPacientes;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFPacientes.AcaoControle;
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

procedure TFPacientes.btnInserirClick(Sender: TObject);
begin
  AcaoControle(false);
  DBNomePaciente.SetFocus;
  QueryPacientes.Append;
end;

procedure TFPacientes.btnAlterarClick(Sender: TObject);
begin
  AcaoControle(false);
  DBNomePaciente.SetFocus;
  QueryPacientes.Edit;
end;

procedure TFPacientes.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confimar exclusão?',mtwarning,[mbyes,mbno],0)=mryes) then
  begin
    QueryPacientes.Delete;
    QueryPacientes.Close;
    QueryPacientes.Open;
  end;
end;

procedure TFPacientes.btnConfirmarClick(Sender: TObject);
begin
  if (DBNomePaciente.Text='') then
  begin
    ShowMessage('Informe o nome do paciente!');
    DBNomePaciente.SetFocus;
    Exit;
  end;
  if (DBLookupConvenio.Text='') then
  begin
    ShowMessage('Informe o convênio!');
    DBLookupConvenio.SetFocus;
    Exit;
  end;
  if (DBLookupCidade.Text='') then
  begin
    ShowMessage('Informe a cidade!');
    DBLookupCidade.SetFocus;
    Exit;
  end;
  AcaoControle(true);
  QueryPacientes.Post;
end;

procedure TFPacientes.btnCancelarClick(Sender: TObject);
begin
  AcaoControle(true);
  QueryPacientes.Cancel;
  QueryPacientes.Close;
  QueryPacientes.Open;
end;

procedure TFPacientes.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
