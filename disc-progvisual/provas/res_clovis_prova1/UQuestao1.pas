unit UQuestao1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,grids, StdCtrls, ExtCtrls;

type
  TFQuestao1 = class(TForm)
    Grid1: TStringGrid;
    Panel1: TPanel;
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

var
  FQuestao1: TFQuestao1;

implementation

{$R *.dfm}

procedure TFQuestao1.Button1Click(Sender: TObject);
var x,y,c,valor:integer;
    celula:string;
begin
  for x:=0 to Grid1.rowcount - 1 do
    for y:=0 to Grid1.colcount - 1 do
    begin
      valor:=0; celula:=Grid1.Cells[x,y]; 
      for c:=1 to length(celula) do
       if celula[c] in ['0'..'9'] then
        valor:=valor+strtoint(celula[c]);

      Grid1.Cells[x,y]:=inttostr(valor);
    end;
end;

procedure TFQuestao1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFQuestao1.FormShow(Sender: TObject);
var x,y,c,n:integer;
   valor,numeros:string;
begin
  numeros:='0123456789';
  randomize;
  for x:=0 to Grid1.rowcount - 1 do
    for y:=0 to Grid1.colcount - 1 do
    begin
      valor:='';
      for c:=1 to 10 do
        if (random(100) mod 2)=0 then
        begin
          repeat
            n:=random(90);
          until (n>=65);
          valor:=valor+chr(n);
        end
         else
            valor:=valor+numeros[random(10)+1];
       Grid1.cells[x,y]:=valor;
    end;
end;

end.
