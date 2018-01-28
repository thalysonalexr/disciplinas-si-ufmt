unit UResponsaveis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask;

type
  TFRespTec = class(TForm)
    GrupoLista: TGroupBox;
    GrupoDados: TGroupBox;
    GrupoOperacoes: TGroupBox;
    DBGridAreaPlantio: TDBGrid;
    DataEqUtil: TDataSource;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    QueryResp: TADOQuery;
    QueryRespCodigoTecnico: TAutoIncField;
    QueryRespNomeTecnico: TStringField;
    Label1: TLabel;
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
    procedure botoes(acao: boolean);
  end;

var
  FRespTec: TFRespTec;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFRespTec.botoes(acao: Boolean);
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

procedure TFRespTec.btnAlterarClick(Sender: TObject);
begin
  botoes(false);
  DBedit1.setfocus;
  QueryResp.Edit;
end;

procedure TFRespTec.btnCancelarClick(Sender: TObject);
begin
  botoes(true);
  QueryResp.Cancel;
  QueryResp.Close;
  QueryResp.Open;
end;

procedure TFRespTec.btnConfirmarClick(Sender: TObject);
begin
  if (DBEdit1.Text='') then
  begin
    MessageDlg('Preecha o campo "Descrição"',mtInformation,[mbok],0);
    DBEdit1.SetFocus;
    exit;
  end;

  botoes(true);
  QueryResp.Post;
end;

procedure TFRespTec.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confimar exclusão?',mtwarning,[mbyes,mbno],0)=mryes) then
  begin
    QueryResp.Delete;
    QueryResp.Close;
    QueryResp.Open;
  end;
end;

procedure TFRespTec.btnInserirClick(Sender: TObject);
begin
  botoes(false);
  DBedit1.SetFocus;
  QueryResp.Append;
end;

procedure TFRespTec.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
