unit UExe2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,StdCtrls;

type
  TFExe2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TTexto = class(TEdit)
    public
      procedure Pesquisar(c:char);
      procedure inverter;
  end;

var
  FExe2: TFExe2;
  conteudo:TTexto;

implementation

{$R *.dfm}

procedure TTexto.Pesquisar(c: Char);
var i,total:integer;
begin
  total:=0;
  for i:=1 to length(text) do
    if (text[i]=c) then
     inc(total);
   messagedlg('Total Encontrado:'+inttostr(total),mtinformation,[mbok],0);
end;

procedure TTExto.inverter;
var i:integer;
    aux:string;
begin
  aux:='';
  for i:=length(text) downto 1 do
    aux:=aux+text[i];
  text:=aux;
end;

procedure TFExe2.Button1Click(Sender: TObject);
var car:string;
begin
  car:=inputbox('Entrada de dados','Caracter para pesquisa','');
  conteudo.Pesquisar(car[1]);
end;

procedure TFExe2.Button2Click(Sender: TObject);
begin
  conteudo.inverter;
end;

procedure TFExe2.FormShow(Sender: TObject);
begin
  conteudo:=TTexto.Create(FExe2);
  conteudo.Parent:=FExe2;
  conteudo.Text:='Rondonopolis';
end;

end.
