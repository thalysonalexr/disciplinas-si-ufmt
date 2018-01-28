unit UAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ADODB, ExtCtrls;

type
  TFAlunos = class(TForm)
    QueryAlunos: TADOQuery;
    QueryAlunosMatricula: TIntegerField;
    QueryAlunosNome: TStringField;
    DataAlunos: TDataSource;
    DBGridAlunos: TDBGrid;
    GrupoDados: TGroupBox;
    Label1: TLabel;
    DBMatricula: TDBEdit;
    Label2: TLabel;
    DBNome: TDBEdit;
    Panel1: TPanel;
    BtnInserir: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnConfirmar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    BtnSair: TSpeedButton;
    QueryAlunosSexo: TStringField;
    QueryAlunosEstadoCivil: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    QueryAlunosIDCidade: TIntegerField;
    QueryCidades: TADOQuery;
    QueryCidadesIDCidade: TIntegerField;
    QueryCidadesNome: TStringField;
    QueryCidadesSigla: TStringField;
    QueryAlunosLookupCidades: TStringField;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QueryAlunoscalcSexo: TStringField;
    QueryAlunoscalcCivil: TStringField;
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure QueryAlunosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Botoes(acao:boolean);
  end;

var
  FAlunos: TFAlunos;

implementation

uses UPrincipal;

{$R *.dfm}


procedure TFAlunos.Botoes(acao:boolean);
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

procedure TFAlunos.BtnInserirClick(Sender: TObject);
begin
  Botoes(false);
  DBMatricula.SetFocus;
  QueryAlunos.Append;
end;

procedure TFAlunos.BtnEditarClick(Sender: TObject);
begin
  Botoes(false);
  DBMatricula.SetFocus;
  QueryAlunos.Edit;
end;

procedure TFAlunos.BtnExcluirClick(Sender: TObject);
begin
  if (messagedlg('Confirma Exclusão',mtconfirmation,[mbyes,mbno],0)=mryes) then
  begin                                              
    QueryAlunos.Delete;
    QueryAlunos.Close;
    QueryAlunos.open;
  end;
end;

procedure TFAlunos.BtnConfirmarClick(Sender: TObject);
begin
  QueryAlunos.Post;
  Botoes(true);
end;

procedure TFAlunos.BtnCancelarClick(Sender: TObject);
begin
  QueryAlunos.Cancel;
  Botoes(true);
end;

procedure TFAlunos.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFAlunos.QueryAlunosCalcFields(DataSet: TDataSet);
begin
if QueryAlunosSexo.value='M' then
  QueryAlunoscalcSexo.value:='Masculino'
 else if QueryAlunosSexo.value='F' then
   QueryAlunoscalcSexo.value:='Feminino';

case QueryAlunosEstadoCivil.value of
  1:QueryAlunoscalcCivil.value:='Solteiro';
  2:QueryAlunoscalcCivil.value:='Casado';
  3:QueryAlunoscalcCivil.value:='Divorciado';
  4:QueryAlunoscalcCivil.value:='Viúvo';
end;

end;

end.
