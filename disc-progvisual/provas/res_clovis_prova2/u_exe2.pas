unit u_exe2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFExe2 = class(TForm)
    BtnDescricao: TBitBtn;
    BtnFabricante: TBitBtn;
    BtnMonitor: TBitBtn;
    BtnCapacidade: TBitBtn;
    edit1: TEdit;
    Label1: TLabel;
    BtnSair: TButton;
    procedure FormShow(Sender: TObject);
    procedure BtnDescricaoClick(Sender: TObject);
    procedure BtnFabricanteClick(Sender: TObject);
    procedure BtnMonitorClick(Sender: TObject);
    procedure BtnCapacidadeClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TConsultas = class(TListBox)
    public
      nomearquivo:string;
      procedure consultardescricao(descricao:string);
      procedure consultarfabricante(fabricante:string);
      procedure consultarmonitor(monitor:string);
      procedure consultarcapacidade(valor1,valor2:string);
    private
      nomelogico:TextFile;
  end;

var
  FExe2: TFExe2;
  obj1: TConsultas;

implementation

{$R *.dfm}
procedure TConsultas.consultardescricao(descricao:string);
var dados:string;
    p:integer;
begin
  items.Clear;
  assignfile(nomelogico,nomearquivo);
  reset(nomelogico);
  while not eof(nomelogico) do
    begin
      readln(nomelogico,dados);
      for p:=1 to 21 do
        if (uppercase(descricao)=uppercase(copy(dados,p,length(descricao)))) then
          items.Add(dados);
    end;
  closefile(nomelogico);
end;

procedure TConsultas.consultarfabricante(fabricante:string);
var dados:string;
    p:integer;
begin
  items.Clear;
  assignfile(nomelogico,nomearquivo);
  reset(nomelogico);
  while not eof(nomelogico) do
    begin
      readln(nomelogico,dados);
      for p:=21 to 31 do
        if (uppercase(fabricante)=uppercase(copy(dados,p,length(fabricante)))) then
          items.Add(dados);
    end;
  closefile(nomelogico);
end;

procedure TConsultas.consultarmonitor(monitor:string);
var dados:string;
    p:integer;
begin
  items.Clear;
  assignfile(nomelogico,nomearquivo);
  reset(nomelogico);
  while not eof(nomelogico) do
    begin
      readln(nomelogico,dados);
      for p:=32 to 42 do
        if (uppercase(monitor)=uppercase(copy(dados,p,length(monitor)))) then
          items.Add(dados);
    end;
  closefile(nomelogico);
end;

procedure TConsultas.consultarcapacidade(valor1,valor2:string);
var dados:string;
    valor:integer;
begin
  items.Clear;
  assignfile(nomelogico,nomearquivo);
  reset(nomelogico);
  while not eof(nomelogico) do
    begin
      readln(nomelogico,dados);
      valor:=strtoint(trim(copy(dados,43,3)));
      if (valor>=strtoint(valor1)) and  (valor<=strtoint(valor2)) then
          items.Add(dados);
    end;
  closefile(nomelogico);
end;

procedure TFExe2.BtnDescricaoClick(Sender: TObject);
begin
  if edit1.text <> '' then
    begin
      obj1.consultardescricao(edit1.Text);
    end
  else
    showmessage('Favor preencher o campo de pesquisa!');
end;

procedure TFExe2.BtnFabricanteClick(Sender: TObject);
begin
  if edit1.text <> '' then
    begin
      obj1.consultarfabricante(edit1.Text);
    end
  else
    showmessage('Favor preencher o campo de pesquisa!');
end;

procedure TFExe2.BtnMonitorClick(Sender: TObject);
begin
  if edit1.text <> '' then
    begin
      obj1.consultarmonitor(edit1.text);
    end
  else
    showmessage('Favor preencher o campo de pesquisa!');
end;

procedure TFExe2.BtnCapacidadeClick(Sender: TObject);
var v1,v2:string;
begin
  v1:=inputbox('Entrada de dados','valor inicial','');
  v2:=inputbox('Entrada de dados','valor final','');
  if (v1<>'') and (v2<>'') then
    begin
      obj1.consultarcapacidade(v1,v2);
    end
  else
    showmessage('Favor preencher o campo de pesquisa!');
end;

procedure TFExe2.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFExe2.FormShow(Sender: TObject);
begin
  obj1:= TConsultas.Create(FExe2);
  obj1.Parent:= FExe2;
  obj1.Width:=449;
  obj1.Height:=110;
  obj1.nomearquivo:='questao2.txt';
end;

end.
