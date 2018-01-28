unit UBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFBanco = class(TForm)
    RadioOperacoes: TRadioGroup;
    GroupBox1: TGroupBox;
    CampoValor: TEdit;
    BtnExecutar: TBitBtn;
    BtnSair: TBitBtn;
    procedure BtnSairClick(Sender: TObject);
    procedure BtnExecutarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TBanco=class
  public
    Saldo:real;
    procedure depositar(valor:real); // Gravar valor referente a um saldo em arquivo
    procedure retirar(valor:real); // Simular uma retirada de saldo de um arquivo
    function SaldoAtual:real; // Função para apresentar o saldo atual contido no arquivo
  private
    Logico:Textfile;
end;


var
  FBanco: TFBanco;
  operacoes:TBanco;

implementation

{$R *.dfm}

{ TBanco }

procedure TBanco.depositar(valor: real);
var aux:string;
begin
  assignfile(Logico,'c:\aulas\saldo.dat');
  if not FileExists('c:\aulas\saldo.dat') then
  begin
   rewrite(Logico);
   writeln(Logico,floattostr(valor));
  end
  else
   begin
   reset(Logico);
   readln(Logico,aux);
   closefile(Logico);

   Saldo:=strtofloat(aux)+valor;
   rewrite(Logico);
   writeln(Logico,floattostr(Saldo));
   closefile(Logico);
  end
end;

procedure TBanco.retirar(valor: real);
var aux:string;
begin
  assignfile(Logico,'c:\aulas\saldo.dat');
  if not FileExists('c:\aulas\saldo.dat') then
    messagedlg('Arquivo não existe',mterror,[mbok],0)
  else
  begin
   reset(Logico);
   readln(Logico,aux);
   closefile(Logico);

   Saldo:=strtofloat(aux);
   if (Saldo<valor) then
        messagedlg('Saldo Insuficiente',mterror,[mbok],0)
   else
   begin
    rewrite(Logico);
    Saldo:=Saldo-valor;
    writeln(Logico,floattostr(Saldo));
    closefile(Logico);
   end;
  end;
end;

function TBanco.SaldoAtual: real;
var aux:string;
begin
  aux:='-1';
  if not FileExists('c:\aulas\saldo.dat') then
    messagedlg('Arquivo não existe',mterror,[mbok],0)
  else
  begin
    assignfile(Logico,'c:\aulas\saldo.dat');
    reset(Logico);
    readln(Logico,aux);
    closefile(Logico);
  end;
  result:=strtofloat(aux);
end;

procedure TFBanco.BtnExecutarClick(Sender: TObject);
begin
  if (RadioOperacoes.ItemIndex=-1) then
  begin
    messagedlg('Selecione uma operação',mterror,[mbok],0);
    exit;
  end;
  case RadioOperacoes.itemindex of
    0:begin
        if (CampoValor.Text='') then
        begin
          messagedlg('Informe um valor',mterror,[mbok],0);
          exit;
        end;
        operacoes.depositar(strtofloat(CampoValor.text));
        CampoValor.Clear;
      end;
    1:begin
        if (CampoValor.Text='') then
        begin
          messagedlg('Informe um valor',mterror,[mbok],0);
          exit;
        end;
        operacoes.retirar(strtofloat(CampoValor.text));
        CampoValor.Clear;
      end;
     2:if (operacoes.SaldoAtual=-1) then
         CampoValor.Text:=''
       else
        CampoValor.Text:=floattostr(operacoes.SaldoAtual);
  end;
end;

procedure TFBanco.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFBanco.FormShow(Sender: TObject);
begin
  operacoes:=TBanco.create;
  CampoValor.Text:=floattostr(operacoes.SaldoAtual);
end;

end.
