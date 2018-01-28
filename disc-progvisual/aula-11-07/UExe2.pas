unit UExe2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFExe2 = class(TForm)
    lista1: TListBox;
    lista3: TListBox;
    lista2: TListBox;
    listaresultado: TListBox;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TCalc = class
    public
      procedure listas(l1,l2,l3,l4:Tlistbox);
  end;


var
  FExe2: TFExe2;
  teste: TCalc;

implementation

{$R *.dfm}
  procedure TCalc.listas(l1,l2,l3,l4:Tlistbox);
  var linha:integer;
  r:real;
  begin
    r:=0; linha:=0;
    for linha :=0  to l1.items.count -1 do
    begin
      case (l3.Items[linha][1]) of
        '+': r:=strtofloat(l1.Items[linha])+strtofloat(l2.Items[linha]);
        '-': r:=strtofloat(l1.Items[linha])-strtofloat(l2.Items[linha]);
        '*': r:=strtofloat(l1.Items[linha])*strtofloat(l2.Items[linha]);
        '/': r:=strtofloat(l1.Items[linha])/strtofloat(l2.Items[linha]);
      end;
      l4.Items.add(floattostr(r));
    end;
  end;
procedure TFExe2.Button1Click(Sender: TObject);
begin
  teste.listas(lista1,lista2,lista3,listaresultado);
end;

procedure TFExe2.FormShow(Sender: TObject);
var
  a: Integer; op:string;
begin
  randomize;
  a:=0;
  op:='+-*/';
  for a := 1 to 10 do
  begin
    lista1.Items.add(inttostr(random(10)+1));
    lista2.Items.add(inttostr(random(10)+1));
    lista3.Items.add(op[random(4)+1]);
  end;

end;

end.
