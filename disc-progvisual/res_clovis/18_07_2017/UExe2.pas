unit UExe2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,StdCtrls, Buttons;

type
  TFExe2 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    CampoTexto: TEdit;
    Label1: TLabel;
    Button1: TButton;
    lista1: TListBox;
    SpeedButton3: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


  TStr=class
    public
      Texto:string;
      Valores:array[1..2,1..2] of string;
      // Inverter texto
      procedure sobre; overload;
      // quantidade de cada vogal
      procedure sobre(var a,e,i,o,u:integer); overload;
      // Pesquisar caracater
      procedure sobre(car:char); overload;
      // Apresentar 1 palava por linha
      procedure sobre(lista:TListbox); overload;
      // Inverter a linha de uma matriz
      procedure sobre(linha:integer); overload;
      // Inverter colunas de uma lista apresentando o resultado em outra
      procedure sobre(lista1,lista2:TListbox); overload;
  end;

var
  FExe2: TFExe2;
  teste:TStr;


implementation

{$R *.dfm}

// Pesquisar caracater
procedure TStr.sobre(car:char);
var c,total:integer;
begin
  total:=0;
  for c:=1 to length(Texto) do
    if (texto[c]=car) then
      inc(total);
  showmessage('Total encontrado:'+inttostr(total));
end;

// Apresentar 1 palava por linha
procedure TStr.sobre(lista:TListbox);
var palavra:string;
    l,c:integer;
begin
 palavra:='';
 for l:=0 to Lista.items.Count - 1 do
 begin
   for c:=1 to length(texto) do
    if (texto[c]<>' ') then
      palavra:=palavra+texto[c]
    else
    begin
      lista.Items.add(palavra);
      palavra:='';
    end;
 end;
 lista.Items.add(palavra); 
end;

// Inverter a linha de uma matriz
procedure TStr.sobre(linha:integer);
var c:integer;
    aux,temp:string;
begin
  aux:='';
  temp:=valores[linha,1]+' '+valores[linha,2];
  for c:=length(temp) downto 1 do
    aux:=aux+temp[c];
  showmessage(aux);  
end;

// Inverter colunas de uma lista apresentando o resultado em outra
procedure TStr.sobre(lista1,lista2:TListbox);
begin

end;

// Inverter texto
procedure TStr.sobre;
var c:integer;
    aux:string;
begin
  aux:='';
  for c:=length(Texto) downto 1 do
    aux:=aux+Texto[c];
  showmessage(aux);
end;

// quantidade de cada vogal
procedure TStr.sobre(var a,e,i,o,u:integer);
var c:integer;
begin
  for c:=1 to length(Texto) do
    case (upcase(Texto[c])) of
     'A':inc(a);
     'E':inc(e);
     'I':inc(i);
     'O':inc(o);
     'U':inc(u);
    end;
end;

procedure TFExe2.Button1Click(Sender: TObject);
begin
  teste.sobre(1);
end;

procedure TFExe2.FormShow(Sender: TObject);
begin
  teste:=TStr.create;
  teste.Texto:='Roondonopolis Mato Grosso';
  teste.Valores[1,1]:='Mato Grosso';
  teste.Valores[1,2]:='UFMT';
  teste.Valores[2,1]:='Sistemas';
  teste.Valores[2,2]:='Informação';
end;

procedure TFExe2.SpeedButton1Click(Sender: TObject);
var va,ve,vi,vo,vu:integer;
begin
teste.sobre(va,ve,vi,vo,vu);
showmessage('A:'+inttostr(va)+
            ' E:'+inttostr(ve)+
            ' I:'+inttostr(vi)+
            ' O:'+inttostr(vo)+
            ' U:'+inttostr(vu));
end;

procedure TFExe2.SpeedButton2Click(Sender: TObject);
begin
if (CampoTexto.Text='') then
begin
  messagedlg('informe o texto',mtinformation,[mbok],0);
  CampoTexto.setfocus;
  exit;
end;
 Teste.Texto:=CampoTexto.Text;
 CampoTexto.Clear;
end;

procedure TFExe2.SpeedButton3Click(Sender: TObject);
begin
  teste.sobre(lista1);
end;

end.
