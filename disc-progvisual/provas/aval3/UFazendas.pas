unit UFazendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask;

type
  TFFazendas = class(TForm)
    GrupoLista: TGroupBox;
    GrupoDados: TGroupBox;
    GrupoOperacoes: TGroupBox;
    DBGridAreaPlantio: TDBGrid;
    QueryFazendas: TADOQuery;
    DataFazendas: TDataSource;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    QueryFazendasCodigoFazenda: TAutoIncField;
    QueryFazendasNomeFazenda: TStringField;
    QueryFazendasTipoPropriedade: TStringField;
    QueryFazendasDescricaoLocalizacao: TStringField;
    QueryFazendasNomeProprietario: TStringField;
    Label1: TLabel;
    DBNomeFazenda: TDBEdit;
    Label2: TLabel;
    DBPropriedade: TDBEdit;
    Label3: TLabel;
    DBLocalizacao: TDBEdit;
    Label4: TLabel;
    DBNomeproprietario: TDBEdit;
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
    procedure botoes(acao: boolean);
  end;

var
  FFazendas: TFFazendas;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFFazendas.botoes(acao: Boolean);
begin
  btnInserir   .Enabled := acao;
  btnAlterar   .Enabled := acao;
  btnExcluir   .Enabled := acao;
  btnConfirmar .Enabled := not acao;
  btnCancelar  .Enabled := not acao;
  btnSair      .Enabled := acao;
  GrupoLista   .Enabled := acao;
  GrupoDados   .Enabled := not acao;
end;

procedure TFFazendas.btnAlterarClick(Sender: TObject);
begin
  botoes(false);
  DBNomeFazenda.setfocus;
  QueryFazendas.Edit;
end;

procedure TFFazendas.btnCancelarClick(Sender: TObject);
begin
  botoes(true);
  QueryFazendas.Cancel;
  QueryFazendas.Close;
  QueryFazendas.Open;
end;

procedure TFFazendas.btnConfirmarClick(Sender: TObject);
begin
  if (DBNomeFazenda.Text='') then
  begin
    MessageDlg('Preecha o campo "Nome Fazenda"',mtInformation,[mbok],0);
    DBNomeFazenda.SetFocus;
    exit;
  end;

  if (DBPropriedade.Text='') then
  begin
    MessageDlg('Preecha o campo "Propriedade"',mtInformation,[mbok],0);
    DBPropriedade.SetFocus;
    exit;
  end;

  if (DBLocalizacao.Text='') then
  begin
    MessageDlg('Preecha o campo "Localização"',mtInformation,[mbok],0);
    DBLocalizacao.SetFocus;
    exit;
  end;

  if (DBNomeproprietario.Text='') then
  begin
    MessageDlg('Preecha o campo "Proprietário"',mtInformation,[mbok],0);
    DBNomeproprietario.SetFocus;
    exit;
  end;

  botoes(true);
  QueryFazendas.Post;
end;

procedure TFFazendas.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confimar exclusão?',mtwarning,[mbyes,mbno],0)=mryes) then
  begin
    QueryFazendas.Delete;
    QueryFazendas.Close;
    QueryFazendas.Open;
  end;
end;

procedure TFFazendas.btnInserirClick(Sender: TObject);
begin
  botoes(false);
  DBNomeFazenda.SetFocus;
  QueryFazendas.Append;
end;

procedure TFFazendas.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
