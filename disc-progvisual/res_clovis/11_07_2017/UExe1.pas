unit UExe1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ComCtrls;

type
  TFExe1 = class(TForm)
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    g1: TStringGrid;
    g2: TStringGrid;
    BitBtn1: TBitBtn;
    TabSheet2: TTabSheet;
    lista1: TListBox;
    lista2: TListBox;
    lista3: TListBox;
    ListaResultados: TListBox;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TSomar=class
    public
     function SomarValores(grid1,grid2:Tstringgrid):real;
     procedure Operacoes(l1,l2,l3,l4:TListbox);
  end;

var
  FExe1: TFExe1;
  calc:TSomar;

implementation

{$R *.dfm}

procedure TSomar.Operacoes(l1,l2,l3,l4:TListbox);
var linha:integer;
    r:real;
begin
  for linha := 0 to l1.items.Count - 1 do
  begin
   r:=0;
   case (l3.items[linha][1]) of
    '+':r:=strtofloat(l1.Items[linha])+strtofloat(l2.Items[linha]);
    '-':r:=strtofloat(l1.Items[linha])-strtofloat(l2.Items[linha]);
    '*':r:=strtofloat(l1.Items[linha])*strtofloat(l2.Items[linha]);
    '/':r:=strtofloat(l1.Items[linha])/strtofloat(l2.Items[linha]);
   end;
   l4.Items.Add(floattostr(r));
  end;
end;

procedure TFExe1.BitBtn3Click(Sender: TObject);
begin
  calc.Operacoes(lista1,lista2,lista3,listaresultados);
end;

procedure TFExe1.BitBtn1Click(Sender: TObject);
var resultado:real;
begin
  resultado:=calc.SomarValores(g1,g2);
  showmessage(floattostr(resultado));
end;

procedure TFExe1.BitBtn2Click(Sender: TObject);
begin
  close;
end;

function TSomar.SomarValores(grid1,grid2:Tstringgrid):real;
var a,b:integer;
    total:real;
begin
  total:=0;
  for a := 0 to grid1.ColCount - 1 do
   for b := 0 to grid1.ColCount - 1 do
    total:=total+strtofloat(grid1.Cells[a,b]);

   for a := 0 to grid2.ColCount - 1 do
   for b := 0 to grid2.ColCount - 1 do
    total:=total+strtofloat(grid2.Cells[a,b]);

   result:=total;
end;



procedure TFExe1.FormShow(Sender: TObject);
var a,b:integer;
    op:string[4];
begin
  randomize;
  for a := 0 to g1.ColCount - 1 do
   for b := 0 to g1.ColCount - 1 do
   begin
     g1.Cells[a,b]:=inttostr(random(10)+1);
     g2.Cells[a,b]:=inttostr(random(10)+1);
   end;

   op:='+-*/';
   for a:=1 to 10 do
   begin
     lista1.Items.Add(inttostr(random(10)+1));
     lista2.Items.Add(inttostr(random(10)+1));
     lista3.Items.Add(op[random(4)+1]);
   end;
     

   calc:=TSomar.Create;
end;

end.
