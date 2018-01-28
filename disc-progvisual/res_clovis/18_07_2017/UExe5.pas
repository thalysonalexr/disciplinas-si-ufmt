unit UExe5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,grids, Buttons;

type
  TFExe5 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TLista=class(TStringGrid)
    public
     constructor create(C:TComponent;Linhas,QtdeCaracteres:integer);
     procedure separar;
  end;


var
  FExe5: TFExe5;
  Dados:TLista;

implementation

{$R *.dfm}

///////////////////////////////////////////////////////////////////
//
//Criar uma classe em Delphi chamada Tlista para manipula��o de caracteres.
//A classe ser� derivada de um StringGrid e ter� os seguintes membros:
//Linhas: par�metro(construtor) respons�vel pela quantidade de  linhas manipuladas pelo
//grid;
//QtdeCaracteres:  par�metro(construtor)  respons�vel  pela  quantidade  de  caracteres
//manipuladas nas c�lulas do grid;
//Create: Construtor para iniciar a classe.
//Separar: M�todo para separar as letras mai�sculas dos demais caracteres, as
//letras ser�o armazenadas na c�lula 1 e os demais caracteres na c�lula 2. Os
//caractares  ser�o  gerados  na  c�lula  0  aleatoriamente atrav�s  do  construtor
//create.
///////////////////////////////////////////////////////////////////

constructor TLista.create(C:TComponent;Linhas,QtdeCaracteres:integer);
var x,y,car:integer;
    aux:string;
begin
  inherited create(C);
  FixedCols:=0;
  FixedRows:=0;
  colcount:=3;
  height:=400;
  rowcount:=Linhas;
  randomize;
  for x:=0 to rowcount - 1 do
  begin
    aux:='';
    for y :=1 to QtdeCaracteres do
    begin
      repeat
         car:=random(97);
      until (car>64);
      aux:=aux+chr(car);
    end;
    cells[0,x]:=aux;
  end;
end;

procedure TLista.separar;
var maiusculos,aux,temp:string;
    l,c:integer;
begin
  for l:=0 to RowCount - 1 do
  begin
    temp:=cells[0,l]; aux:=''; maiusculos:='';
    for c:=1 to length(temp) do
      if (temp[c] in ['A'..'Z']) then
       maiusculos:=maiusculos+temp[c]
     else
      aux:=aux+temp[c];
    cells[1,l]:=maiusculos;
    cells[2,l]:=aux;    
  end;  
end;

procedure TFExe5.FormShow(Sender: TObject);
begin
  Dados:=TLista.create(FExe5,5,8);
  Dados.Parent:=FExe5;
end;

procedure TFExe5.SpeedButton1Click(Sender: TObject);
begin
  Dados.separar;
end;

procedure TFExe5.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

end.
