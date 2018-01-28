unit UCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ADODB, Grids, DBGrids, Buttons;

type
  TFCidades = class(TForm)
    QueryCidades: TADOQuery;
    QueryCidadesIDCidade: TIntegerField;
    QueryCidadesNome: TStringField;
    QueryCidadesSigla: TStringField;
    DataCidades: TDataSource;
    GrupoDados: TGroupBox;
    Label2: TLabel;
    DBNome: TDBEdit;
    Label4: TLabel;
    DBGridCidades: TDBGrid;
    DBSigla: TDBEdit;
    GroupBox1: TGroupBox;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Botoes(acao: Boolean);
  end;

var
  FCidades: TFCidades;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFCidades.Botoes(acao: Boolean);
begin
  btnInserir.Enabled := acao;
  btnEditar .Enabled := acao;
  btnExcluir .Enabled := acao;
  btnConfirmar .Enabled := not acao;
  btnCancelar .Enabled := not acao;
  btnSair      .Enabled := acao;
  DBGridCidades .Enabled := acao;
  GrupoDados  .Enabled := not acao;
end;

procedure TFCidades.btnInserirClick(Sender: TObject);
begin
  botoes(false);
  DBNome.SetFocus;
  QueryCidades.Append;
end;

procedure TFCidades.btnEditarClick(Sender: TObject);
begin
  botoes(false);
  DBNome.SetFocus;
  QueryCidades.Edit;
end;

procedure TFCidades.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confirmar exclusão?',mtconfirmation,[mbyes,mbno],0)=mryes) then
  begin
    QueryCidades.Delete;
    QueryCidades.Close;
    QueryCidades.Open;
  end;
end;

procedure TFCidades.btnConfirmarClick(Sender: TObject);
begin
  QueryCidades.Post;
  Botoes(true);
end;

procedure TFCidades.btnCancelarClick(Sender: TObject);
begin
  QueryCidades.Cancel;
  Botoes(true);
end;

procedure TFCidades.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
