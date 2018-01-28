unit UExe1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TFExe1 = class(TForm)
    g1: TStringGrid;
    g2: TStringGrid;
    Somar: TButton;
    Sair: TButton;
    procedure FormShow(Sender: TObject);
    procedure SomarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TSomar = class
    public
     function SomarValores(grid1,grid2:Tstringgrid ):real;
  end;

var
  FExe1: TFExe1;
  calc:TSomar;
implementation

{$R *.dfm}
function TSomar.SomarValores(grid1,grid2:Tstringgrid):real;
var a,b:integer; total:real;
begin
total:=0;
  for a := 0 to grid1.ColCount - 1 do
    for b := 0 to grid1.RowCount - 1 do
      total:=total+strtoint(grid1.cells[a,b]);

  for a := 0 to grid2.ColCount - 1 do
    for b := 0 to grid2.RowCount - 1 do
      total:=total+strtoint(grid2.cells[a,b]);

  result:=total;
end;


procedure TFExe1.FormShow(Sender: TObject);
var coluna , linha:integer;
begin
randomize;
  for coluna := 0 to g1.ColCount - 1 do
    for linha := 0 to g2.RowCount - 1 do
    begin
      g1.Cells[coluna,linha]:= inttostr(random(10)+1);
      g2.Cells[coluna,linha]:= inttostr(random(10)+1);
    end;

calc:=TSomar.create;
end;

procedure TFExe1.SomarClick(Sender: TObject);
var resultado:real;
begin
  resultado:=calc.SomarValores(g1,g2);
  showmessage(floattostr(resultado));
end;

end.
