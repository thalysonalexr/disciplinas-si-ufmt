unit UPesquisas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFPesquisas = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;
TArqUtil=class
   public
    origem,destino:string;
    function NumCar(car:char):integer;
    procedure SubstituirCar(car1,car2:char);
   private
    log_Origem,log_Destino:textfile;
    aux:string;
   end;

var
  FPesquisas: TFPesquisas;

implementation

{$R *.dfm}

{ TArqUtil }

function TArqUtil.NumCar(car: char): integer;
begin

end;

procedure TArqUtil.SubstituirCar(car1, car2: char);
var c:integer;
begin
  if not FileExists(origem) then
  begin
    messagedlg('Arquivo não existe',mterror,[mbok],0);
    exit;
  end;
 assignfile(log_Origem,origem);
 assignfile(log_Destino,destino);
 reset(log_Origem);
 rewrite(log_Destino);
 while not eof(log_Origem) do
 begin
   readln(origem,aux);
   for c:=1 to length(aux) do
    if (aux[c]=car1) then
      aux[c]:=car2;
   writeln(log_Destino,aux);
 end;
 closefile(log_Origem);
 closefile(log_Destino);
end;

end.
