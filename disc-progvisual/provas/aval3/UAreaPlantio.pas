unit UAreaPlantio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask;

type
  TFAreaPlantio = class(TForm)
    GrupoLista: TGroupBox;
    GrupoDados: TGroupBox;
    GrupoOperacoes: TGroupBox;
    DBGridAreaPlantio: TDBGrid;
    QueryFazendas: TADOQuery;
    QueryAreas: TADOQuery;
    DataAreas: TDataSource;
    QueryAreasCodigoArea: TAutoIncField;
    QueryAreasCodigoFazenda: TIntegerField;
    QueryAreasNomeArea: TStringField;
    QueryAreasAreaHA: TFloatField;
    QueryAreasLookup_fazendas: TStringField;
    Label1: TLabel;
    DBNomeArea: TDBEdit;
    Label2: TLabel;
    DBAreaHA: TDBEdit;
    Label3: TLabel;
    DBLookupFazendas: TDBLookupComboBox;
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
    procedure botoes(acao: boolean);
  end;

var
  FAreaPlantio: TFAreaPlantio;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFAreaPlantio.botoes(acao: Boolean);
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

procedure TFAreaPlantio.btnAlterarClick(Sender: TObject);
begin
  botoes(false);
  DBNomeArea.setfocus;
  queryareas.Edit;
end;

procedure TFAreaPlantio.btnCancelarClick(Sender: TObject);
begin
  botoes(true);
  QueryAreas.Cancel;
  QueryAreas.Close;
  QueryAreas.Open;
end;

procedure TFAreaPlantio.btnConfirmarClick(Sender: TObject);
begin
  if (DBNomeArea.Text='') then
  begin
    MessageDlg('Preecha o campo "Nome área"',mtInformation,[mbok],0);
    DBNomeArea.SetFocus;
    exit;
  end;

  if (DBLookupFazendas.Text='') then
  begin
    MessageDlg('Preecha o campo "Fazenda"',mtInformation,[mbok],0);
    DBLookupFazendas.SetFocus;
    exit;
  end;

  if (DBAreaHA.Text='') then
  begin
    MessageDlg('Preecha o campo "Área HA"',mtInformation,[mbok],0);
    DBAreaHA.SetFocus;
    exit;
  end;

  botoes(true);
  QueryAreas.Post;
end;

procedure TFAreaPlantio.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confimar exclusão?',mtwarning,[mbyes,mbno],0)=mryes) then
  begin
    queryareas.Delete;
    queryareas.Close;
    queryareas.Open;
  end;
end;

procedure TFAreaPlantio.btnInserirClick(Sender: TObject);
begin
  botoes(false);
  DBNomeArea.SetFocus;
  QueryAreas.Append;
end;

procedure TFAreaPlantio.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
