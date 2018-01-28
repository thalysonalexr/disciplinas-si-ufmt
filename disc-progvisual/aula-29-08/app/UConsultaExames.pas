unit UConsultaExames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, ADODB;

type
  TFConsultaExames = class(TForm)
    QueryExames: TADOQuery;
    DataExames: TDataSource;
    GroupBox1: TGroupBox;
    btnSair: TSpeedButton;
    btnConsultar: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    CampoExames: TEdit;
    QueryExamesidTiposExame: TAutoIncField;
    QueryExamesDescricao: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaExames: TFConsultaExames;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFConsultaExames.btnConsultarClick(Sender: TObject);
begin
  QueryExames.Close;
  QueryExames.Parameters.ParamByName('exame').Value := CampoExames.Text + '%';
  QueryExames.Open;
end;

procedure TFConsultaExames.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
