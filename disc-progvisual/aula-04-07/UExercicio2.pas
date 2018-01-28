unit UExercicio2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFExercicio2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TTexto = class(TEdit)
  public
    procedure Pesquisar(c: char);
    procedure Inverter();
  end;

var
  FExercicio2: TFExercicio2;
  campoTTexto: TTexto;

implementation

{$R *.dfm}

procedure TFExercicio2.Button1Click(Sender: TObject);
begin
  campoTTexto.Inverter;
end;

procedure TFExercicio2.Button2Click(Sender: TObject);
begin
  campoTTexto.Pesquisar(InputBox('Pesquisa', 'Digite um caracter', '')[1]);
end;

procedure TFExercicio2.FormShow(Sender: TObject);
begin
  campoTTexto := TTexto.Create(FExercicio2);
  campoTTexto.Parent := FExercicio2;
  campoTTexto.Text := 'SISTEMAS DE INFORMAÇÃO';
end;

procedure TTexto.Pesquisar(c: char);
var i, total: Integer;
begin
  total := 0;
  for i := 1 to Length(Text) do
    if (Text[i] = c) then
      Inc(total);
    MessageDlg('Total encontrado: ' + IntToStr(total), mtInformation, [mbOK], 0);
end;

procedure TTexto.Inverter;
var aux: string;
  i: Integer;
begin
  aux := '';
  for i := Length(Text) downto 1 do
    aux := aux + Text[i];
  Text := aux;
end;

end.
