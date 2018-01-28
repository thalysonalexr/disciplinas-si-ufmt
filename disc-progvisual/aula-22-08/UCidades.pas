unit UCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, DB, ADODB, Grids, DBGrids;

type
  TFCadCidades = class(TForm)
    DBGridCidades: TDBGrid;
    QueryCidades: TADOQuery;
    QueryEstados: TADOQuery;
    QueryPaises: TADOQuery;
    DataCidades: TDataSource;
    QueryCidadesidCidade: TAutoIncField;
    QueryCidadesNomeCidade: TStringField;
    QueryCidadesidEstado: TIntegerField;
    QueryEstadosidEstado: TAutoIncField;
    QueryEstadosNomeEstado: TStringField;
    QueryEstadosSigla: TStringField;
    QueryEstadosidPais: TIntegerField;
    QueryCidadesLookupEstNome: TStringField;
    QueryCidadesLookupEstUF: TStringField;
    QueryCidadesLookupIDPais: TIntegerField;
    QueryCidadesLookupPaises: TStringField;
    GrupoDados: TGroupBox;
    GroupBox2: TGroupBox;
    btnInserir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnCancelar: TButton;
    btnSair: TButton;
    Label1: TLabel;
    DBNomeCidade: TDBEdit;
    DBLookupEstados: TDBLookupComboBox;
    Label2: TLabel;
    btnConfirmar: TButton;
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
    procedure ControleBotoes(acao: Boolean);
  end;

var
  FCadCidades: TFCadCidades;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFCadCidades.ControleBotoes(acao: Boolean);
begin
  btnInserir.Enabled := acao;
  btnAlterar.Enabled := acao;
  btnExcluir.Enabled := acao;
  btnConfirmar.Enabled := not acao;
  btnCancelar.Enabled := not acao;
  btnSair.Enabled := acao;
  DBGridcidades.Enabled := acao;
  GrupoDados.Enabled := not acao;
end;

procedure TFCadCidades.btnInserirClick(Sender: TObject);
begin
  ControleBotoes(false);
  DBNomeCidade.SetFocus;
  QueryCidades.Append;
end;

procedure TFCadCidades.btnAlterarClick(Sender: TObject);
begin
  ControleBotoes(false);
  DBNomeCidade.SetFocus;
  QueryCidades.Edit;
end;

procedure TFCadCidades.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confirmar exclusão?',mtWarning,[mbyes,mbno],0)=mrYes) then begin
    QueryCidades.Delete;
    QueryCidades.Close;
    QueryCidades.Open;
  end;
end;

procedure TFCadCidades.btnConfirmarClick(Sender: TObject);
begin
  QueryCidades.Post;
  ControleBotoes(true);
end;

procedure TFCadCidades.btnCancelarClick(Sender: TObject);
begin
  QueryCidades.Cancel;
  ControleBotoes(true);
end;

procedure TFCadCidades.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
