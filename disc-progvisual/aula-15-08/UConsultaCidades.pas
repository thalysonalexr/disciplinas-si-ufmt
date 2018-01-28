unit UConsultaCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TFConsultaCidades = class(TForm)
    QueryConsultar: TADOQuery;
    DataConsulta: TDataSource;
    QueryConsultaridCidade: TAutoIncField;
    QueryConsultarNome: TStringField;
    QueryConsultarSigla: TStringField;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    CampoNomeCidade: TEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaCidades: TFConsultaCidades;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFConsultaCidades.Button1Click(Sender: TObject);
begin
  QueryConsultar.Close;
  QueryConsultar.Parameters.ParamByName('nomecidade').Value := CampoNomeCidade.Text+'%';
  QueryConsultar.Open;

  if (QueryConsultar.RecordCount = 0) then
    MessageDlg('Cidade não encontrada!', mtWarning, [mbOk], 0);
end;

procedure TFConsultaCidades.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
