unit UMedicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Buttons, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TFMedicos = class(TForm)
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
    QueryMedicos: TADOQuery;
    DataMedicos: TDataSource;
    QueryMedicosidMedico: TAutoIncField;
    QueryMedicosNomeMedico: TStringField;
    QueryMedicosCRM: TStringField;
    Label1: TLabel;
    DBCampoNome: TDBEdit;
    Label2: TLabel;
    DBCampoCRM: TDBEdit;
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
  FMedicos: TFMedicos;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFMedicos.botoes(acao: boolean);
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

procedure TFMedicos.btnAlterarClick(Sender: TObject);
begin
  botoes(false);
  DBCampoNome.Setfocus;
  QueryMedicos.Edit;
end;

procedure TFMedicos.btnCancelarClick(Sender: TObject);
begin
  botoes(true);
  QueryMedicos.Cancel;
  QueryMedicos.Close;
  QueryMedicos.Open;
end;

procedure TFMedicos.btnConfirmarClick(Sender: TObject);
begin
  botoes(true);
  QueryMedicos.Post;
end;

procedure TFMedicos.btnExlcuirClick(Sender: TObject);
begin
  if (MessageDlg('Deseja realmente excluir?', mtInformation, [mbYes, mbno], 0)=mrYes)
  then begin
    QueryMedicos.Delete;
    QueryMedicos.Close;
    QueryMedicos.Open;
  end;
end;

procedure TFMedicos.btnInserirClick(Sender: TObject);
begin
  botoes(false);
  DBCampoNome.Setfocus;
  QueryMedicos.Append;
end;

procedure TFMedicos.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
