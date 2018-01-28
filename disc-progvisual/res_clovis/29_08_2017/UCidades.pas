unit UCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ADODB, Buttons, ExtCtrls;

type
  TFCidades = class(TForm)
    QueryCidades: TADOQuery;
    GrupoDados: TGroupBox;
    Label1: TLabel;
    DataCidades: TDataSource;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BInserir: TSpeedButton;
    BAlterar: TSpeedButton;
    BExcluir: TSpeedButton;
    BConfirmar: TSpeedButton;
    BCancelar: TSpeedButton;
    BSair: TSpeedButton;
    QueryCidadesidCidade: TAutoIncField;
    QueryCidadesNomeCidade: TStringField;
    QueryCidadesEstado: TStringField;
    DBNome: TDBEdit;
    Label3: TLabel;
    DBEstado: TDBEdit;
    GroupBox1: TGroupBox;
    CampoNome: TEdit;
    Label2: TLabel;
    BConsultar: TSpeedButton;
    procedure BSairClick(Sender: TObject);
    procedure BInserirClick(Sender: TObject);
    procedure BAlterarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure acao(controle:boolean);
  end;

var
  FCidades: TFCidades;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFCidades.acao(controle:boolean);
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

procedure TFCidades.BAlterarClick(Sender: TObject);
begin
 acao(false);
 DBNome.setfocus;
 QueryCidades.edit;
end;

procedure TFCidades.BCancelarClick(Sender: TObject);
begin
 acao(true);
 QueryCidades.cancel;
 QueryCidades.Close;
 QueryCidades.open;
end;

procedure TFCidades.BConfirmarClick(Sender: TObject);
begin
 if (DBNome.Text='') then
 begin
   messagedlg('Informe o nome da cidade',mtinformation,[mbok],0);
   DBNome.setfocus;
   exit;
 end;

 if (DBEstado.Text='') then
 begin
   messagedlg('Informe o nome do estado',mtinformation,[mbok],0);
   DBEstado.setfocus;
   exit;
 end;
 
 acao(true);
 QueryCidades.post;
 QueryCidades.Close;
 QueryCidades.open;
end;

procedure TFCidades.BConsultarClick(Sender: TObject);
begin
  QueryCidades.Close;
  QueryCidades.Parameters.ParamByName('nome').value:=CampoNome.Text+'%';
  QueryCidades.Open;
end;

procedure TFCidades.BExcluirClick(Sender: TObject);
begin
  if (messagedlg('Confirma exclusão?',mtconfirmation,[mbyes,mbno],0)=mryes) then
  begin
    QueryCidades.delete;
    QueryCidades.Close;
    QueryCidades.open;
  end;
end;

procedure TFCidades.BInserirClick(Sender: TObject);
begin
 acao(false);
 DBNome.setfocus;
 QueryCidades.append;
end;

procedure TFCidades.BSairClick(Sender: TObject);
begin
  close;
end;

end.
