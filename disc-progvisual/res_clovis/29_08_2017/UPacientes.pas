unit UPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ADODB, Buttons, ExtCtrls;

type
  TFPacientes = class(TForm)
    QueryPacientes: TADOQuery;
    GrupoDados: TGroupBox;
    Label1: TLabel;
    DataPacientes: TDataSource;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BInserir: TSpeedButton;
    BAlterar: TSpeedButton;
    BExcluir: TSpeedButton;
    BConfirmar: TSpeedButton;
    BCancelar: TSpeedButton;
    BSair: TSpeedButton;
    QueryPacientesidPaciente: TAutoIncField;
    QueryPacientesidTiposConvenio: TIntegerField;
    QueryPacientesidCidade: TIntegerField;
    QueryPacientesNomePaciente: TStringField;
    QueryPacientesNascimento: TDateField;
    DBNome: TDBEdit;
    Label2: TLabel;
    DBNascimento: TDBEdit;
    QueryCidades: TADOQuery;
    QueryCidadesidCidade: TAutoIncField;
    QueryCidadesNomeCidade: TStringField;
    QueryCidadesEstado: TStringField;
    QueryTipos: TADOQuery;
    QueryTiposidTiposConvenio: TAutoIncField;
    QueryTiposNome: TStringField;
    QueryPacienteslooK_cidades: TStringField;
    QueryPacienteslook_tipo: TStringField;
    Label3: TLabel;
    DBLookCidades: TDBLookupComboBox;
    Label4: TLabel;
    DBLookTipo: TDBLookupComboBox;
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
  FPacientes: TFPacientes;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFPacientes.acao(controle:boolean);
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

procedure TFPacientes.BAlterarClick(Sender: TObject);
begin
 acao(false);
 DBNome.setfocus;
 QueryPacientes.edit;
end;

procedure TFPacientes.BCancelarClick(Sender: TObject);
begin
 acao(true);
 QueryPacientes.cancel;
 QueryPacientes.Close;
 QueryPacientes.open;
end;

procedure TFPacientes.BConfirmarClick(Sender: TObject);
begin
 if (DBNome.Text='') then
 begin
   messagedlg('Informe o nome do paciente',mtinformation,[mbok],0);
   DBNome.setfocus;
   exit;
 end;

 if (DBNascimento.text='') then
 begin
   messagedlg('Informe a data de nascimento',mtinformation,[mbok],0);
   DBNascimento.setfocus;
   exit;
 end;

 if (DBLookCidades.text='') then
 begin
   messagedlg('Informe a cidade',mtinformation,[mbok],0);
   DBLookCidades.setfocus;
   exit;
 end;

 if (DBLookTipo.text='') then
 begin
   messagedlg('Informe tipo de convênio',mtinformation,[mbok],0);
   DBLookTipo.setfocus;
   exit;
 end;
 
 acao(true);
 QueryPacientes.post;
 QueryPacientes.Close;
 QueryPacientes.open;
end;

procedure TFPacientes.BExcluirClick(Sender: TObject);
begin
  if (messagedlg('Confirma exclusão?',mtconfirmation,[mbyes,mbno],0)=mryes) then
  begin
    QueryPacientes.delete;
    QueryPacientes.Close;
    QueryPacientes.open;
  end;
end;

procedure TFPacientes.BInserirClick(Sender: TObject);
begin
 acao(false);
 DBNome.setfocus;
 QueryPacientes.append;
end;

procedure TFPacientes.BSairClick(Sender: TObject);
begin
  close;
end;

end.
