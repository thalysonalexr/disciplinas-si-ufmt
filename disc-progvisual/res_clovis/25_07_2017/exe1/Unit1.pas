unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    BtnCriar: TButton;
    BtnLer: TButton;
    Edit1: TEdit;
    BtnLista: TButton;
    ListBox1: TListBox;
    BtnAcrescentar: TButton;
    Edit2: TEdit;
    BtnSomar: TButton;
    DialogoAbertura: TOpenDialog;
    Edit3: TEdit;
    procedure BtnCriarClick(Sender: TObject);
    procedure BtnLerClick(Sender: TObject);
    procedure BtnListaClick(Sender: TObject);
    procedure BtnAcrescentarClick(Sender: TObject);
    procedure BtnSomarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  NomeLogico:TextFile; //(1) Nome Lógico do arquivo

implementation

{$R *.dfm}

procedure TForm1.BtnAcrescentarClick(Sender: TObject);
begin
 // (2) Associação do nome lógico com o arquivo físico
 assignfile(NomeLogico,'c:\aulas\dados.txt');
 // (3) Abertura/criação do arquivo
 append(NomeLogico);
 // (4) Gravação de dados (entrada)
 writeln(NomeLogico,Edit2.text);
 // (5) Fechamento do arquivo
 closefile(NomeLogico);
end;

procedure TForm1.BtnCriarClick(Sender: TObject);
begin
 // (2) Associação do nome lógico com o arquivo físico
 assignfile(NomeLogico,'c:\aulas\dados.txt');
 // (3) Abertura/criação do arquivo
 rewrite(NomeLogico);
 // (4) Gravação de dados (entrada)
 writeln(NomeLogico,'SI - UFMT');
 // (5) Fechamento do arquivo
 closefile(NomeLogico);
end;

procedure TForm1.BtnLerClick(Sender: TObject);
var texto:string;
begin
 // (2) Associação do nome lógico com o arquivo físico
 assignfile(NomeLogico,'c:\aulas\dados.txt');
 // (3) Leitura do arquivo
 reset(NomeLogico);
 // (4) Leitura de dados (entrada)
 readln(NomeLogico,texto);


 Edit1.Text:=texto;
 // (5) Fechamento do arquivo
 closefile(NomeLogico);
end;

procedure TForm1.BtnListaClick(Sender: TObject);
var texto:string;
begin
 // (2) Associação do nome lógico com o arquivo físico
 assignfile(NomeLogico,'c:\aulas\dados.txt');
 // (3) Leitura do arquivo
 reset(NomeLogico);
 // (4) Leitura de dados (entrada)
 while not eof(NomeLogico) do
 begin
    readln(NomeLogico,texto);
    Listbox1.Items.Add(texto);
 end;
 // (5) Fechamento do arquivo
 closefile(NomeLogico);
end;

procedure TForm1.BtnSomarClick(Sender: TObject);
var texto:string;
    total:integer;
begin
 total:=0;
 // (2) Associação do nome lógico com o arquivo físico
 if (DialogoAbertura.Execute=true) then
 begin
   assignfile(NomeLogico,DialogoAbertura.FileName);
   // (3) Leitura do arquivo
   reset(NomeLogico);
   // (4) Leitura de dados (entrada)
   while not eof(NomeLogico) do
   begin
      readln(NomeLogico,texto);
      total:=total+strtoint(texto);
   end;
   // (5) Fechamento do arquivo
   closefile(NomeLogico);
   messagedlg('Total:'+inttostr(total),mtinformation,[mbok],0);
 end;
end;

end.
