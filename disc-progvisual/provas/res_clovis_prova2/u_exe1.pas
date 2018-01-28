unit u_exe1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFExe1 = class(TForm)
    BtnCriptografar: TBitBtn;
    BtnDecriptografar: TBitBtn;
    CampoChave: TEdit;
    Label1: TLabel;
    BtnSair: TButton;
    procedure FormShow(Sender: TObject);
    procedure BtnCriptografarClick(Sender: TObject);
    procedure BtnDecriptografarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TCripto = class(TMemo)
    public
      chave:integer;
      nomearquivo:string;
      procedure criptografar();
      procedure decriptografar();
    private
      nomelogico:TextFile;
  end;

var
  FExe1: TFExe1;
  obj1: TCripto;

implementation

{$R *.dfm}

procedure TCripto.criptografar;
var texto,rs:string;
    p:integer;
begin
  nomearquivo:='questao1.txt';
  assignfile(nomelogico,nomearquivo);
  reset(nomelogico);
  while not eof(nomelogico) do
    begin
      rs:='';
      readln(nomelogico,texto);
      for p := 1 to length(texto) do
        begin
          rs:=rs+(chr(ord(texto[p])+chave));
        end;
      lines.add(rs);
    end;
end;

procedure TCripto.decriptografar;
var texto,rs:string;
    p:integer;
begin
  assignfile(nomelogico,nomearquivo);
  reset(nomelogico);
  while not eof(nomelogico) do
    begin
      rs:='';
      readln(nomelogico,texto);
      for p := 1 to length(texto) do
        begin
          rs:=rs+(chr(ord(texto[p])-chave));
        end;
      lines.add(rs);
    end;
end;

procedure TFExe1.BtnCriptografarClick(Sender: TObject);
begin
  if CampoChave.text <> '' then
    begin
      obj1.chave:=strtoint(CampoChave.text);
      obj1.criptografar();
    end
  else
    showmessage('Informe o valor numérico para codificação.');
end;

procedure TFExe1.BtnDecriptografarClick(Sender: TObject);
begin
  if CampoChave.text <> '' then
    begin
      obj1.chave:=strtoint(CampoChave.text);
      obj1.decriptografar();
    end
  else
    showmessage('Informe o valor numérico para decodificação.');
end;

procedure TFExe1.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFExe1.FormShow(Sender: TObject);
begin
  obj1:= TCripto.create(FExe1);
  obj1.Parent:= FExe1;
  obj1.nomearquivo:='questao1.txt';
end;

end.
