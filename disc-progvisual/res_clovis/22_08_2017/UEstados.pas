unit UEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls;

type
  TFEstados = class(TForm)
    QEstados: TADOQuery;
    QPaises: TADOQuery;
    QPaisesidPais: TAutoIncField;
    QPaisesNomePais: TStringField;
    QEstadosidEstado: TAutoIncField;
    QEstadosidPais: TIntegerField;
    QEstadosNome: TStringField;
    QEstadosSigla: TStringField;
    DBGrid1: TDBGrid;
    DataEstados: TDataSource;
    QEstadoslook_Paises: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstados: TFEstados;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFEstados.SpeedButton1Click(Sender: TObject);
begin
  QEstados.append;
end;

procedure TFEstados.SpeedButton5Click(Sender: TObject);
begin
  QEstados.Post;
end;

end.
