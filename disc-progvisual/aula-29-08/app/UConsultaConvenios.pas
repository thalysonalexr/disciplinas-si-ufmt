unit UConsultaConvenios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, ADODB;

type
  TFConsultaConvenios = class(TForm)
    QueryConvenios: TADOQuery;
    DataConvenios: TDataSource;
    GroupBox1: TGroupBox;
    btnSair: TSpeedButton;
    btnConsultar: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    CampoConvenio: TEdit;
    QueryConveniosidTiposConvenio: TAutoIncField;
    QueryConveniosNome: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaConvenios: TFConsultaConvenios;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFConsultaConvenios.btnConsultarClick(Sender: TObject);
begin
  QueryConvenios.Close;
  QueryConvenios.Parameters.ParamByName('nomeconv').Value := CampoConvenio.Text + '%';
  QueryConvenios.Open;
end;

procedure TFConsultaConvenios.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
