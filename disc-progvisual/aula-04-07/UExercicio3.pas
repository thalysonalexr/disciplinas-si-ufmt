unit UExercicio3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFExercicio3 = class(TForm)
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TTextos = class(TMemo)
  public
    procedure Pesquisar(c: char);

  end;

var
  FExercicio3: TFExercicio3;
  textoTTexto: TTextos;

implementation

{$R *.dfm}

procedure TTextos.Pesquisar(c: Char);
var i, j, tot: Integer;
begin
  tot := 0;
  for i := 0 to Lines.Count - 1 do
    for j := 1 to Length(Lines[i]) do
      if (Lines[i][j] = c) then
        Inc(tot);
  MessageDlg('Total encontrado: ' + IntToStr(tot), mtInformation, [mbOK], 0);

end;

procedure TFExercicio3.Button1Click(Sender: TObject);
begin
  textoTTexto.Pesquisar(InputBox('Pesquisar', 'Digite um caracter', '')[1]);
end;

procedure TFExercicio3.FormShow(Sender: TObject);
begin
  textoTTexto := TTextos.Create(FExercicio3);
  textoTTexto.Parent := FExercicio3;

  textoTTexto.Lines.Add('SISTEMAS');
  textoTTexto.Lines.Add('DE');
  textoTTexto.Lines.Add('INFORMAÇÃO');

end;

end.
