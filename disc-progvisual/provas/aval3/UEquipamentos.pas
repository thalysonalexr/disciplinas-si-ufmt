unit UEquipamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask;

type
  TFEquipamentos = class(TForm)
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
    QueryEquip: TADOQuery;
    QueryEquipCodigoEq: TAutoIncField;
    QueryEquipDescricaoEq: TStringField;
    QueryEquipTipoEquipamento: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
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
  FEquipamentos: TFEquipamentos;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFEquipamentos.botoes(acao: Boolean);
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

procedure TFEquipamentos.btnAlterarClick(Sender: TObject);
begin
  botoes(false);
  DBedit1.setfocus;
  QueryEquip.Edit;
end;

procedure TFEquipamentos.btnCancelarClick(Sender: TObject);
begin
  botoes(true);
  QueryEquip.Cancel;
  QueryEquip.Close;
  QueryEquip.Open;
end;

procedure TFEquipamentos.btnConfirmarClick(Sender: TObject);
begin
  if (DBEdit1.Text='') then
  begin
    MessageDlg('Preecha o campo "Descrição"',mtInformation,[mbok],0);
    DBEdit1.SetFocus;
    exit;
  end;

  if (DBEdit2.Text='') then
  begin
    MessageDlg('Preecha o campo "Tipo"',mtInformation,[mbok],0);
    DBEdit2.SetFocus;
    exit;
  end;

  botoes(true);
  QueryEquip.Post;
end;

procedure TFEquipamentos.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confimar exclusão?',mtwarning,[mbyes,mbno],0)=mryes) then
  begin
    QueryEquip.Delete;
    QueryEquip.Close;
    QueryEquip.Open;
  end;
end;

procedure TFEquipamentos.btnInserirClick(Sender: TObject);
begin
  botoes(false);
  DBedit1.SetFocus;
  QueryEquip.Append;
end;

procedure TFEquipamentos.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
