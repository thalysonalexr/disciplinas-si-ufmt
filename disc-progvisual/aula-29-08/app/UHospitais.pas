unit UHospitais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Buttons, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TFHospitais = class(TForm)
    GrupoGrid: TGroupBox;
    DBGridMedicos: TDBGrid;
    GrupoDados: TGroupBox;
    GrupoOperacoes: TGroupBox;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExlcuir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    QueryHospitais: TADOQuery;
    DataHospitais: TDataSource;
    QueryHospitaisidHospital: TAutoIncField;
    QueryHospitaisidCidade: TIntegerField;
    QueryHospitaisNomeHospital: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBCampoNome: TDBEdit;
    DBLookupCidade: TDBLookupComboBox;
    QueryCidades: TADOQuery;
    QueryCidadesidCidade: TAutoIncField;
    QueryCidadesNomeCidade: TStringField;
    QueryCidadesEstado: TStringField;
    QueryHospitaisLookup_Cidades: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExlcuirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure botoes(acao: boolean);
  end;

var
  FHospitais: TFHospitais;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFHospitais.botoes(acao: boolean);
begin
  btnInserir  .Enabled := acao;
  btnAlterar  .Enabled := acao;
  btnExlcuir  .Enabled := acao;
  btnConfirmar.Enabled := not acao;
  btnCancelar .Enabled := not acao;
  btnSair     .Enabled := acao;
  GrupoGrid   .Enabled := acao;
  GrupoDados  .Enabled := not acao;
end;

procedure TFHospitais.btnAlterarClick(Sender: TObject);
begin
  botoes(false);
  DBCampoNome.Setfocus;
  QueryHospitais.Edit;
end;

procedure TFHospitais.btnCancelarClick(Sender: TObject);
begin
  botoes(true);
  QueryHospitais.Cancel;
  QueryHospitais.Close;
  QueryHospitais.Open;
end;

procedure TFHospitais.btnConfirmarClick(Sender: TObject);
begin
  botoes(true);
  QueryHospitais.Post;
end;

procedure TFHospitais.btnExlcuirClick(Sender: TObject);
begin
  if (MessageDlg('Deseja realmente excluir?', mtInformation, [mbYes, mbno], 0)=mrYes)
  then begin
    QueryHospitais.Delete;
    QueryHospitais.Close;
    QueryHospitais.Open;
  end;
end;

procedure TFHospitais.btnInserirClick(Sender: TObject);
begin
  botoes(false);
  DBCampoNome.Setfocus;
  QueryHospitais.Append;
end;

procedure TFHospitais.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
