unit UExe3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,grids,StdCtrls, Buttons;

type
  TFExe3 = class(TForm)
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TDados=class(TStringgrid)
    public
      Resultados:TListbox;
      constructor create(c:TComponent);
      procedure Executar;
  end;

var
  FExe3: TFExe3;
  dados:TDados;

implementation

{$R *.dfm}

procedure TDados.Executar;
var i,j,maior,menor,soma:integer;
    encontrou:boolean;
begin
  encontrou:=false;
  for i:=0 to FExe3.ComponentCount - 1 do
   if (FExe3.Components[i] is TListBox) then
     encontrou:=true;

  if not (encontrou) then
  begin
    Resultados:=TListbox.Create(FExe3);
    Resultados.Parent:=FExe3;
    Resultados.Left:=500;
    Resultados.Height:=200;
  end;
  maior:=strtoint(cells[0,0]);
  menor:=strtoint(cells[0,0]);
  soma:=0;
  for i:=0 to RowCount - 1 do
   for j:=0 to ColCount - 1 do
   begin
     if (strtoint(cells[i,j])>maior) then
       maior:=strtoint(cells[i,i]);
     if (strtoint(cells[i,j])<menor) then
       menor:=strtoint(cells[i,i]);
     soma:=soma+strtoint(cells[i,j]);
   end;
   Resultados.Items.clear;
   Resultados.Items.add('Resultados');
   Resultados.Items.add('----------');
   Resultados.Items.add('Maior Valor:'+inttostr(maior));
   Resultados.Items.add('Menor Valor:'+inttostr(menor));
   Resultados.Items.add('Soma dos Valores:'+inttostr(soma));
   Resultados.Items.add('Media:'+floattostr((soma)/(rowcount*colcount)));

end;

constructor TDados.create(c:TComponent);
var x,y,r:integer;
begin
  inherited create(c);

  FixedCols:=0;         FixedRows:=0;
  colcount:=10;         rowcount:=10;
  DefaultColWidth:=40;  DefaultRowHeight:=18;
  width:=440;           Height:=220;
  randomize;
  for x:=0 to rowcount - 1 do
    for y:=0 to colcount - 1 do
    begin
    repeat
       r:=random(41);
    until (r>=20);
    Cells[x,y]:=inttostr(r);
    end;
end;

procedure TFExe3.BitBtn1Click(Sender: TObject);
begin
  dados.Executar;
end;

procedure TFExe3.FormShow(Sender: TObject);
begin
  dados:=TDados.create(FExe3);
  dados.Parent:=FExe3;
end;

end.
