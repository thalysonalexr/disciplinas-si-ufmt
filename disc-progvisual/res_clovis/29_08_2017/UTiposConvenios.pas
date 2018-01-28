unit UTiposConvenios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ADODB, Buttons, ExtCtrls;

type
  TFTiposConvenios = class(TForm)
    QueryTipos: TADOQuery;
    GrupoDados: TGroupBox;
    Label1: TLabel;
    DBDescricao: TDBEdit;
    DataTipos: TDataSource;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BInserir: TSpeedButton;
    BAlterar: TSpeedButton;
    BExcluir: TSpeedButton;
    BConfirmar: TSpeedButton;
    BCancelar: TSpeedButton;
    BSair: TSpeedButton;
    QueryTiposidTiposConvenio: TAutoIncField;
    QueryTiposNome: TStringField;
    procedure BSairClick(Sender: TObject);
    procedure BInserirClick(Sender: TObject);
    procedure BAlterarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure acao(controle:boolean);
  end;

var
  FTiposConvenios: TFTiposConvenios;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFTiposConvenios.acao(controle:boolean);
begin
 BInserir  .Enabled:=controle;
 BAlterar  .Enabled:=controle;
 BExcluir  .Enabled:=controle;
 BConfirmar.Enabled:=not controle;
 BCancelar .Enabled:=not controle;
 BSair     .Enabled:=controle;
 GrupoLista.Enabled:=controle;
 GrupoDados.Enabled:=not controle;
end;

procedure TFTiposConvenios.BAlterarClick(Sender: TObject);
begin
 acao(false);
 DBDescricao.setfocus;
 QueryTipos.edit;
end;

procedure TFTiposConvenios.BCancelarClick(Sender: TObject);
begin
 acao(true);
 QueryTipos.cancel;
 QueryTipos.Close;
 QueryTipos.open;
end;

procedure TFTiposConvenios.BConfirmarClick(Sender: TObject);
begin
 if (DBDescricao.Text='') then
 begin
   messagedlg('Informe a decrição',mtinformation,[mbok],0);
   DBDescricao.setfocus;
   exit;
 end;
 
 acao(true);
 QueryTipos.post;
 QueryTipos.Close;
 QueryTipos.open;
end;

procedure TFTiposConvenios.BExcluirClick(Sender: TObject);
begin
  if (messagedlg('Confirma exclusão?',mtconfirmation,[mbyes,mbno],0)=mryes) then
  begin
    QueryTipos.delete;
    QueryTipos.Close;
    QueryTipos.open;
  end;
end;

procedure TFTiposConvenios.BInserirClick(Sender: TObject);
begin
 acao(false);
 DBDescricao.setfocus;
 QueryTipos.append;
end;

procedure TFTiposConvenios.BSairClick(Sender: TObject);
begin
  close;
end;

end.
