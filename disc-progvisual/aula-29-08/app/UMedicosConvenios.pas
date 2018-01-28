unit UMedicosConvenios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Buttons, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TFMedicosConvenios = class(TForm)
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
    DataMedicosConv: TDataSource;
    QueryConvenios: TADOQuery;
    DBLookupMedico: TDBLookupComboBox;
    DBLookupConvenio: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    QueryMedicoConv: TADOQuery;
    QueryMedicoConvidTiposConvenio: TIntegerField;
    QueryMedicoConvidMedico: TIntegerField;
    QueryMedicoConvLookup_medicos: TStringField;
    QueryMedicoConvLookup_convenios: TStringField;
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
  FMedicosConvenios: TFMedicosConvenios;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFMedicosConvenios.botoes(acao: boolean);
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

procedure TFMedicosConvenios.btnAlterarClick(Sender: TObject);
begin
  botoes(false);
  DBLookupMedico.Setfocus;
  QueryMedicoConv.Edit;
end;

procedure TFMedicosConvenios.btnCancelarClick(Sender: TObject);
begin
  botoes(true);
  QueryMedicoConv.Cancel;
  QueryMedicoConv.Close;
  QueryMedicoConv.Open;
end;

procedure TFMedicosConvenios.btnConfirmarClick(Sender: TObject);
begin
  botoes(true);
  QueryMedicoConv.Post;
end;

procedure TFMedicosConvenios.btnExlcuirClick(Sender: TObject);
begin
  if (MessageDlg('Deseja realmente excluir?', mtInformation, [mbYes, mbno], 0)=mrYes)
  then begin
    QueryMedicoConv.Delete;
    QueryMedicoConv.Close;
    QueryMedicoConv.Open;
  end;
end;

procedure TFMedicosConvenios.btnInserirClick(Sender: TObject);
begin
  botoes(false);
  DBLookupMedico.Setfocus;
  QueryMedicoConv.Append;
end;

procedure TFMedicosConvenios.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
