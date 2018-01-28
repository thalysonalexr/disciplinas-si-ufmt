unit UConsultaCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, ADODB;

type
  TFConsultaCidades = class(TForm)
    QueryCidades: TADOQuery;
    DataCidades: TDataSource;
    GroupBox1: TGroupBox;
    btnSair: TSpeedButton;
    btnConsultar: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    CampoCidade: TEdit;
    procedure btnSairClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
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

procedure TFConsultaCidades.btnConsultarClick(Sender: TObject);
begin
  QueryCidades.Close;
  QueryCidades.Parameters.ParamByName('nomecidade').Value := CampoCidade.Text + '%';
  QueryCidades.Open;
end;

procedure TFConsultaCidades.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
