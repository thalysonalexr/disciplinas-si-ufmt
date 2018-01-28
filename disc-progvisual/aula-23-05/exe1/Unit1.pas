unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    CampoTexto1: TEdit;
    CampoTexto2: TEdit;
    Button1: TButton;
    CampoResultado: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  CampoResultado.Text := CampoTexto1.Text + CampoTexto2.Text;
end;
end.
