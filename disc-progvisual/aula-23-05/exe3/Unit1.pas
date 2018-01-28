unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btnAtribuir: TButton;
    btnFinalizar: TButton;
    CampoTexto: TEdit;
    Label1: TLabel;
    mmoTexto: TMemo;
    procedure btnAtribuirClick(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAtribuirClick(Sender: TObject);
begin
  if (Length(CampoTexto.Text) > 0) then
    mmoTexto.Lines.Add(CampoTexto.Text);
end;

procedure TForm1.btnFinalizarClick(Sender: TObject);
begin
  close;
end;
end.
