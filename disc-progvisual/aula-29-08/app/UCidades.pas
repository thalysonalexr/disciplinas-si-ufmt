unit UCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ADODB;

type
  TFCidades = class(TForm)
    QueryCidades: TADOQuery;
    GrupoDados: TGroupBox;
    Label1: TLabel;
    DBDescricao: TDBEdit;
    DataCidades: TDataSource;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    QueryCidadesidCidade: TAutoIncField;
    QueryCidadesNomeCidade: TStringField;
    QueryCidadesEstado: TStringField;
    Label2: TLabel;
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
  FCidades: TFCidades;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFCidades.AcaoControle;
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

procedure TFCidades.btnInserirClick(Sender: TObject);
begin
  AcaoControle(false);
  DBDescricao.SetFocus;
  QueryCidades.Append;
end;

procedure TFCidades.btnAlterarClick(Sender: TObject);
begin
  AcaoControle(false);
  DBDescricao.SetFocus;
  QueryCidades.Edit;
end;

procedure TFCidades.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confimar exclusão?',mtwarning,[mbyes,mbno],0)=mryes) then
  begin
    QueryCidades.Delete;
    QueryCidades.Close;
    QueryCidades.Open;
  end;
end;

procedure TFCidades.btnConfirmarClick(Sender: TObject);
begin
  if (DBDescricao.Text='') then
  begin
    MessageDlg('Informe a descrição!',mtWarning,[mbok],0);
    DBDescricao.SetFocus;
    Exit;
  end;
  AcaoControle(true);
  QueryCidades.Post;
end;

procedure TFCidades.btnCancelarClick(Sender: TObject);
begin
  AcaoControle(true);
  QueryCidades.Cancel;
  QueryCidades.Close;
  QueryCidades.Open;
end;

procedure TFCidades.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
