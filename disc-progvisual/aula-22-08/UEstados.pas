unit UEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, DBCtrls, Mask;

type
  TFCadEstados = class(TForm)
    QueryPaises: TADOQuery;
    QueryEstados: TADOQuery;
    DBGridEstados: TDBGrid;
    DataEstados: TDataSource;
    GroupBox1: TGroupBox;
    GrupoDados: TGroupBox;
    btnInserir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    btnSair: TButton;
    QueryEstadosidEstado: TAutoIncField;
    QueryEstadosNomeEstado: TStringField;
    QueryEstadosSigla: TStringField;
    QueryEstadosidPais: TIntegerField;
    QueryEstadosLookupPaises: TStringField;
    Label1: TLabel;
    DBNomeEstado: TDBEdit;
    Label2: TLabel;
    DBUF: TDBEdit;
    Label3: TLabel;
    DBLookupEstados: TDBLookupComboBox;
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
  FCadEstados: TFCadEstados;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFCadEstados.ControleBotoes;
begin
  btnInserir.Enabled := acao;
  btnAlterar.Enabled := acao;
  btnExcluir.Enabled := acao;
  btnConfirmar.Enabled := not acao;
  btnCancelar.Enabled := not acao;
  btnSair.Enabled := acao;
  DBGridEstados.Enabled := acao;
  GrupoDados.Enabled := not acao;
end;



procedure TFCadEstados.btnInserirClick(Sender: TObject);
begin
  ControleBotoes(False);
  DBNomeEstado.SetFocus;
  QueryEstados.Append;
end;

procedure TFCadEstados.btnAlterarClick(Sender: TObject);
begin
  ControleBotoes(false);
  DBNomeEstado.SetFocus;
  QueryEstados.Edit;
end;

procedure TFCadEstados.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confirmar exclusão?',mtconfirmation,[mbYes,mbno],0)=mryes) then
  begin
    QueryEstados.Delete;
    QueryEstados.Close;
    QueryEstados.Open;
  end;

end;

procedure TFCadEstados.btnConfirmarClick(Sender: TObject);
begin
  QueryEstados.Post;
  ControleBotoes(true);
end;

procedure TFCadEstados.btnCancelarClick(Sender: TObject);
begin
  QueryEstados.Cancel;
  ControleBotoes(true);
end;

procedure TFCadEstados.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
