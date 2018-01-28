unit UExamesMedicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ADODB, ComCtrls;

type
  TFExamesMedicos = class(TForm)
    QueryPacientes: TADOQuery;
    GrupoDados: TGroupBox;
    DataExamesMed: TDataSource;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    QueryMedicos: TADOQuery;
    QueryExames: TADOQuery;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    QueryExamesMed: TADOQuery;
    QueryExamesMedidPaciente: TIntegerField;
    QueryExamesMedidMedico: TIntegerField;
    QueryExamesMedidTiposExame: TIntegerField;
    QueryExamesMedResultado: TStringField;
    QueryExamesMedLookup_Pacientes: TStringField;
    QueryExamesMedLookup_Medicos: TStringField;
    QueryExamesMedLookup_Exames: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBLookupPaciente: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
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
    procedure AcaoControle(acao: boolean);
  end;

var
  FExamesMedicos: TFExamesMedicos;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFExamesMedicos.AcaoControle;
begin
  btnInserir.Enabled   := acao;
  btnAlterar.Enabled   := acao;
  btnExcluir.Enabled   := acao;
  btnConfirmar.Enabled := not acao;
  btnCancelar.Enabled  := not acao;
  btnSair.Enabled      := acao;
  GrupoLista.Enabled   := acao;
  GrupoDados.Enabled   := not acao;
end;

procedure TFExamesMedicos.btnInserirClick(Sender: TObject);
begin
  AcaoControle(false);
  DBLookupPaciente.SetFocus;
  QueryExamesMed.Append;
end;

procedure TFExamesMedicos.btnAlterarClick(Sender: TObject);
begin
  AcaoControle(false);
  DBLookupPaciente.SetFocus;
  QueryExamesMed.Edit;
end;

procedure TFExamesMedicos.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Confimar exclusão?',mtwarning,[mbyes,mbno],0)=mryes) then
  begin
    QueryExamesMed.Delete;
    QueryExamesMed.Close;
    QueryExamesMed.Open;
  end;
end;

procedure TFExamesMedicos.btnConfirmarClick(Sender: TObject);
begin
  AcaoControle(true);
  QueryExamesMed.Post;
end;

procedure TFExamesMedicos.btnCancelarClick(Sender: TObject);
begin
  AcaoControle(true);
  QueryExamesMed.Cancel;
  QueryExamesMed.Close;
  QueryExamesMed.Open;
end;

procedure TFExamesMedicos.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
