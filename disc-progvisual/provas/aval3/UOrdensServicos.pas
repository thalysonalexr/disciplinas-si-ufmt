unit UOrdensServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask;

type
  TFOrdensServ = class(TForm)
    GrupoLista: TGroupBox;
    GrupoDados: TGroupBox;
    GrupoOperacoes: TGroupBox;
    DBGridAreaPlantio: TDBGrid;
    QueryAreas: TADOQuery;
    QueryResponsaveis: TADOQuery;
    DataEqUtil: TDataSource;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    QueryOrdensServ: TADOQuery;
    QueryOrdensServCodigoOrdem: TAutoIncField;
    QueryOrdensServCodigoTecnico: TIntegerField;
    QueryOrdensServCodigoArea: TIntegerField;
    QueryOrdensServDataOrdem: TDateField;
    QueryOrdensServLookup_Resp: TStringField;
    QueryOrdensServLookup_Areas: TStringField;
    Label1: TLabel;
    DBData: TDBEdit;
    Label2: TLabel;
    DBLookupResp: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupArea: TDBLookupComboBox;
    QueryOrdensServcalc_data: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure QueryOrdensServCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure botoes(acao: boolean);
  end;

var
  FOrdensServ: TFOrdensServ;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFOrdensServ.botoes(acao: Boolean);
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

procedure TFOrdensServ.btnAlterarClick(Sender: TObject);
begin
  botoes(false);
  DBData.setfocus;
  QueryOrdensServ.Edit;
end;

procedure TFOrdensServ.btnCancelarClick(Sender: TObject);
begin
  botoes(true);
  QueryOrdensServ.Cancel;
  QueryOrdensServ.Close;
  QueryOrdensServ.Open;
end;

procedure TFOrdensServ.btnConfirmarClick(Sender: TObject);
begin
  if (DBData.Text='') then
  begin
    MessageDlg('Preecha o campo "Data de ordem"',mtInformation,[mbok],0);
    DBData.SetFocus;
    exit;
  end;

  if (DBLookupArea.Text='') then
  begin
    MessageDlg('Preecha o campo "Área"',mtInformation,[mbok],0);
    DBLookupArea.SetFocus;
    exit;
  end;

  if (DBLookupResp.Text='') then
  begin
    MessageDlg('Preecha o campo "Técnico responsável"',mtInformation,[mbok],0);
    DBLookupResp.SetFocus;
    exit;
  end;

  botoes(true);
  QueryOrdensServ.Post;
end;

procedure TFOrdensServ.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confimar exclusão?',mtwarning,[mbyes,mbno],0)=mryes) then
  begin
    QueryOrdensServ.Delete;
    QueryOrdensServ.Close;
    QueryOrdensServ.Open;
  end;
end;

procedure TFOrdensServ.btnInserirClick(Sender: TObject);
begin
  botoes(false);
  DBData.SetFocus;
  QueryOrdensServ.Append;
end;

procedure TFOrdensServ.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFOrdensServ.QueryOrdensServCalcFields(DataSet: TDataSet);
var dia, mes, ano: word;
  d, a: string;
begin
  DecodeDate(QueryOrdensServDataOrdem.Value, ano, mes, dia);
  d := FormatFloat('00', dia);
  a := inttostr(ano);
  case (mes) of
     1: QueryOrdensServcalc_data.Value := d+' de Janeiro de '+a;
     2: QueryOrdensServcalc_data.Value := d+' de Fevereiro de '+a;
     3: QueryOrdensServcalc_data.Value := d+' de Março de '+a;
     4: QueryOrdensServcalc_data.Value := d+' de Abril de '+a;
     5: QueryOrdensServcalc_data.Value := d+' de Maio de '+a;
     6: QueryOrdensServcalc_data.Value := d+' de Junho de '+a;
     7: QueryOrdensServcalc_data.Value := d+' de Julho de '+a;
     8: QueryOrdensServcalc_data.Value := d+' de Agosto de '+a;
     9: QueryOrdensServcalc_data.Value := d+' de Setembro de '+a;
    10: QueryOrdensServcalc_data.Value := d+' de Outubro de '+a;
    11: QueryOrdensServcalc_data.Value := d+' de Novembro de '+a;
    12: QueryOrdensServcalc_data.Value := d+' de Dezembro de '+a;
  end;


end;

end.
