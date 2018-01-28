unit UEquipamentosUtil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask;

type
  TFEquipamentosUtil = class(TForm)
    GrupoLista: TGroupBox;
    GrupoDados: TGroupBox;
    GrupoOperacoes: TGroupBox;
    DBGridAreaPlantio: TDBGrid;
    QueryAreas: TADOQuery;
    QueryEquipamentos: TADOQuery;
    DataEqUtil: TDataSource;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    QueryEqUtilizados: TADOQuery;
    QueryEqUtilizadosCodigoUso: TAutoIncField;
    QueryEqUtilizadosCodigoArea: TIntegerField;
    QueryEqUtilizadosCodigoEq: TIntegerField;
    QueryEqUtilizadosDataUso: TIntegerField;
    QueryEqUtilizadosLookup_area: TStringField;
    QueryEqUtilizadosLookup_equip: TStringField;
    Label1: TLabel;
    DBDataUso: TDBEdit;
    Label2: TLabel;
    DBLookupArea: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupEquipamento: TDBLookupComboBox;
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
  FEquipamentosUtil: TFEquipamentosUtil;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFEquipamentosUtil.botoes(acao: Boolean);
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

procedure TFEquipamentosUtil.btnAlterarClick(Sender: TObject);
begin
  botoes(false);
  DBDataUso.setfocus;
  QueryEqUtilizados.Edit;
end;

procedure TFEquipamentosUtil.btnCancelarClick(Sender: TObject);
begin
  botoes(true);
  QueryEqUtilizados.Cancel;
  QueryEqUtilizados.Close;
  QueryEqUtilizados.Open;
end;

procedure TFEquipamentosUtil.btnConfirmarClick(Sender: TObject);
begin
  if (DBDataUso.Text='') then
  begin
    MessageDlg('Preecha o campo "Data Uso"',mtInformation,[mbok],0);
    DBDataUso.SetFocus;
    exit;
  end;

  if (DBLookupEquipamento.Text='') then
  begin
    MessageDlg('Preecha o campo "Equipamento"',mtInformation,[mbok],0);
    DBLookupEquipamento.SetFocus;
    exit;
  end;

  if (DBLookupArea.Text='') then
  begin
    MessageDlg('Preecha o campo "Área"',mtInformation,[mbok],0);
    DBLookupArea.SetFocus;
    exit;
  end;

  botoes(true);
  QueryEqUtilizados.Post;
end;

procedure TFEquipamentosUtil.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confimar exclusão?',mtwarning,[mbyes,mbno],0)=mryes) then
  begin
    QueryEqUtilizados.Delete;
    QueryEqUtilizados.Close;
    QueryEqUtilizados.Open;
  end;
end;

procedure TFEquipamentosUtil.btnInserirClick(Sender: TObject);
begin
  botoes(false);
  DBDataUso.SetFocus;
  QueryEqUtilizados.Append;
end;

procedure TFEquipamentosUtil.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
