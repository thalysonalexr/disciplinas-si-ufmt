unit UExe3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,StdCtrls;

type
  TFExe3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


  TTextos=class(TMemo)
    public
      procedure Pesquisar(c:char);
  end;

var
  FExe3: TFExe3;
  textos:TTextos;

implementation

{$R *.dfm}

procedure TTextos.Pesquisar(c: Char);
var i,l,total:integer;
    temp:string;
begin
  total:=0;
  for l:=0 to lines.Count - 1 do
  begin
    temp:=lines[l];
    for i:=1 to length(temp) do
      if (temp[i]=c) then
       inc(total);
   end;
   messagedlg('Total Encontrado:'+inttostr(total),mtinformation,[mbok],0);
end;

procedure TFExe3.Button1Click(Sender: TObject);
var car:string;
begin
  car:=inputbox('Entrada de dados','Caracter para pesquisa','');
  textos.Pesquisar(car[1]);
end;

procedure TFExe3.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFExe3.FormShow(Sender: TObject);
begin
  textos:=TTextos.Create(FExe3);
  textos.Parent:=FExe3;
  textos.Lines.Add('Rondonopolis');
  textos.Lines.Add('Mato Grosso');
  textos.Lines.Add('UFMT');

end;

end.
