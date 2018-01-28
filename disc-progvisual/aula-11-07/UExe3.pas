unit UExe3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Grids,StdCtrls;

type
  TFExe3 = class(TForm)
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TDados = class(Tstringgrid)
    public
      TResultados : Tlistbox;
      constructor create (obj: TComponent);
      procedure Executar;
  end;


var
  FExe3: TFExe3;
  grid: TDados;


implementation

{$R *.dfm}

  procedure TDados.Executar;
  var i,maior,menor,soma,coluna,cont,linha:integer;
      encontrou:boolean;
      media:real;
  begin
    encontrou:=false;
    for I := 0 to FExe3.ComponentCount - 1 do
      if (FExe3.Components[i] is TListBox) then
        encontrou:=true;
    if not (encontrou) then
    begin
      TResultados:=TListbox.create(FExe3);
      TResultados.parent:=FExe3;
      TResultados.left:=500;
      TResultados.height:=200;
    end;
    maior:=strtoint(grid.cells[0,0]);
    menor:=strtoint(grid.cells[0,0]);
    soma:=0;  cont:=0;
    for coluna := 0 to grid.colCount - 1 do
      for linha := 0 to grid.rowCount - 1 do
      begin
        if (grid.Cells[coluna,linha]>inttostr(maior)) then
          maior:=strtoint(grid.cells[coluna,linha]);
        if grid.cells[coluna,linha]<inttostr(menor) then
          menor:=strtoint(grid.cells[coluna,linha]);
        soma:=soma+strtoint(grid.cells[coluna,linha]);
        cont:=cont+1;
      end;
      media:=soma/cont;
      TResultados.Items.clear;
      TResultados.items.add('Resultados');
      TResultados.items.add('-----------');
      TResultados.items.add('Maior Valor: '+ inttostr(maior));
      TResultados.items.add('Menor Valor: '+inttostr(menor));
      TResultados.items.add('Soma dos Valores: '+ inttostr(soma));
      TResultados.items.add('Media: '+ floattostr(media));


  end;

  constructor TDados.create (obj: TComponent);
  begin
    inherited create(obj);
    fixedcols:=0;
    fixedrows:=0;
    defaultcolwidth:=40;
    defaultrowheight:=18;
    colcount:=10;
    rowcount:=10;
    width:=440;
    height:=220
  end;


procedure TFExe3.Button1Click(Sender: TObject);
begin
  grid.Executar;
end;

procedure TFExe3.FormShow(Sender: TObject);
var linha,coluna,r:integer;
begin
  randomize;
  grid:= TDados.create(FExe3);
  grid.Parent:=FExe3;
  for coluna := 0 to grid.colCount - 1 do
    for linha := 0 to grid.rowCount - 1 do
    begin
      repeat
      r:=random(40)+1;
      until r>20;
      grid.cells[coluna,linha]:=inttostr(r);
    end;
      

end;

end.
