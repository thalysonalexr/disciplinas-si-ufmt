unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    CampoTexto1: TEdit;
    CampoTexto2: TEdit;
    GroupBox1: TGroupBox;
    Resultado: TEdit;
    Comparar: TButton;
    Sair: TButton;
    procedure CompararClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CompararClick(Sender: TObject);
begin
     if (LowerCase(CampoTexto1.Text) = LowerCase(CampoTexto2.Text)) then
        Resultado.Text := 'Iguais!'
     else
         Resultado.Text := 'Diferentes!';
end;

procedure TForm1.SairClick(Sender: TObject);
begin
     Close;
end;

end.
