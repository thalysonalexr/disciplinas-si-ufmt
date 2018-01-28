unit UCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ADODB, Grids, DBGrids, Buttons, ExtCtrls;

type
  TFCidades = class(TForm)
    Panel1: TPanel;
    BtnInserir: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnConfirmar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    BtnSair: TSpeedButton;
    GrupoDados: TGroupBox;
    DBGridAlunos: TDBGrid;
    QueryCidades: TADOQuery;
    QueryCidadesIDCidade: TIntegerField;
    QueryCidadesNome: TStringField;
    QueryCidadesSigla: TStringField;
    Label1: TLabel;
    DBCodigo: TDBEdit;
    DataCidades: TDataSource;
    Label2: TLabel;
    DBNome: TDBEdit;
    Label3: TLabel;
    DBSigla: TDBEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    CampoNome: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Botoes(acao:boolean);
  end;

var
  FCidades: TFCidades;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFCidades.Botoes(acao:boolean);
begin
  BtnInserir  .Enabled:=acao;
  BtnEditar   .Enabled:=acao;
  BtnExcluir  .Enabled:=acao;
  BtnConfirmar.Enabled:=not acao;
  BtnCancelar .Enabled:=not acao;
  BtnSair     .Enabled:=acao;
  DBGridAlunos.Enabled:=acao;
  GrupoDados  .Enabled:=not acao;
end;

procedure TFCidades.BtnCancelarClick(Sender: TObject);
begin
  QueryCidades.Cancel;
  Botoes(true);
end;

procedure TFCidades.BtnConfirmarClick(Sender: TObject);
begin
  QueryCidades.Post;
  Botoes(true);
end;

procedure TFCidades.BtnEditarClick(Sender: TObject);
begin
  Botoes(false);
  DBCodigo.SetFocus;
  QueryCidades.edit;
end;

procedure TFCidades.BtnExcluirClick(Sender: TObject);
begin
  if (messagedlg('Confirma Exclusão',mtconfirmation,[mbyes,mbno],0)=mryes) then
  begin
    QueryCidades.Delete;
    QueryCidades.Close;
    QueryCidades.open;
  end;
end;

procedure TFCidades.BtnInserirClick(Sender: TObject);
begin
  Botoes(false);
  DBCodigo.SetFocus;
  QueryCidades.Append;
end;

procedure TFCidades.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFCidades.SpeedButton1Click(Sender: TObject);
begin
  QueryCidades.close;
  QueryCidades.Parameters.ParamByName('nomecidade').Value:=CampoNome.Text+'%';
  QueryCidades.Open;

  if QueryCidades.RecordCount=0 then
    messagedlg('Cidade Não Encontrado',mtwarning,[mbok],0);
end;

procedure TFCidades.SpeedButton2Click(Sender: TObject);
begin
  QueryCidades.close;
  QueryCidades.SQL.Clear;
  QueryCidades.SQL.Add('select * from lpv.cidades where upper(nome) like upper('+
                                      QuotedStr(CampoNome.Text+'%')+')');
  QueryCidades.Open;

  if QueryCidades.RecordCount=0 then
    messagedlg('Cidade Não Encontrado',mtwarning,[mbok],0);
end;

end.
