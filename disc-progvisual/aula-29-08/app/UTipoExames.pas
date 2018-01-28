unit UTipoExames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ADODB;

type
  TFTiposExames = class(TForm)
    QueryTipos: TADOQuery;
    QueryTiposidTiposExame: TAutoIncField;
    QueryTiposDescricao: TStringField;
    GrupoDados: TGroupBox;
    Label1: TLabel;
    DBDescricao: TDBEdit;
    DataTipos: TDataSource;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
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
  FTiposExames: TFTiposExames;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFTiposExames.AcaoControle;
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

procedure TFTiposExames.btnInserirClick(Sender: TObject);
begin
  AcaoControle(false);
  DBDescricao.SetFocus;
  QueryTipos.Append;
end;

procedure TFTiposExames.btnAlterarClick(Sender: TObject);
begin
  AcaoControle(false);
  DBDescricao.SetFocus;
  QueryTipos.Edit;
end;

procedure TFTiposExames.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confimar exclusão?',mtwarning,[mbyes,mbno],0)=mryes) then
  begin
    QueryTipos.Delete;
    QueryTipos.Close;
    QueryTipos.Open;
  end;
end;

procedure TFTiposExames.btnConfirmarClick(Sender: TObject);
begin
  if (DBDescricao.Text='') then
  begin
    MessageDlg('Informe a descrição!',mtWarning,[mbok],0);
    DBDescricao.SetFocus;
    Exit;
  end;
  AcaoControle(true);
  QueryTipos.Post;
end;

procedure TFTiposExames.btnCancelarClick(Sender: TObject);
begin
  AcaoControle(true);
  QueryTipos.Cancel;
  QueryTipos.Close;
  QueryTipos.Open;
end;

procedure TFTiposExames.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
