unit UQuestao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFQuestao2 = class(TForm)
    btnConsultar: TButton;
    RadioOp: TRadioGroup;
    CampoPesquisa: TEdit;
    GroupBox1: TGroupBox;
    btnConsultarFaixa: TButton;
    CampoInicio: TEdit;
    CampoFim: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnConsultarFaixaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TQuerys = class(TListBox)
  public
    NomeArquivo: String;
    procedure ConsultarDescricao(descricao: String);
    procedure ConsultarFabricante(fabricante: String);
    procedure ConsultarMonitor(TipoMonitor: String);
    procedure ConsultarCapacidade(CapInicial, CapFinal: Integer);
  end;

var
  FQuestao2: TFQuestao2;
  dados: TQuerys;

implementation

{$R *.dfm}

{ Inicio métodos da classe TQuerys }

procedure TQuerys.ConsultarDescricao(descricao: String);
var i: Integer;
  log: TextFile;
  texto: String;
begin
  Clear;
  AssignFile(log, NomeArquivo);
  Reset(log);

  while not Eof(log) do begin
    Readln(log, texto);
    for i := 1 to 20 do
    	if (UpperCase(Copy(texto,i,Length(descricao)))=UpperCase(descricao)) then
      		Items.Add(texto);
  end;
  CloseFile(log);
  if (Count = 0) then
    ShowMessage('Nenhum resultado encontrado para "'+descricao+'"');
end;

procedure TQuerys.ConsultarFabricante(fabricante: String);
var i: Integer;
  log: TextFile;
  texto: String;
begin
  Clear;
  AssignFile(log, NomeArquivo);
  Reset(log);

  while not Eof(log) do begin
    Readln(log, texto);
    for i := 21 to 31 do
    	if (UpperCase(Copy(texto, i, Length(fabricante)))=UpperCase(fabricante)) then
      		Items.Add(texto);
  end;
  CloseFile(log);

  if (Count = 0) then
    ShowMessage('Nenhum resultado encontrado para "'+fabricante+'"');
end;

procedure TQuerys.ConsultarMonitor(TipoMonitor: string);
var i: Integer;
  log: TextFile;
  texto, aux: String;
begin
  Clear;
  AssignFile(log, NomeArquivo);
  Reset(log);

  while not Eof(log) do begin
    Readln(log, texto);
    for i := 32 to 42 do
    	if (UpperCase(Copy(texto, i, Length(TipoMonitor)))=UpperCase(TipoMonitor)) then
      		Items.Add(texto);
  end;
  CloseFile(log);

  if (Count = 0) then
    ShowMessage('Nenhum resultado encontrado para "'+TipoMonitor+'"');
end;

procedure TQuerys.ConsultarCapacidade(CapInicial, CapFinal: Integer);
var i, valor: Integer;
  log: TextFile;
  texto, aux: String;
begin
  Clear;
  AssignFile(log, NomeArquivo);
  Reset(log);

  while not Eof(log) do begin
    Readln(log, texto);
    aux := '';
    for i := 43 to 45 do
      aux := aux + texto[i];
    valor := StrToInt(Trim(aux));
    if ((valor>=CapInicial)and(valor<=CapFinal)) then
      Items.Add(texto);
  end;
  CloseFile(log);

  if (Count = 0) then
    ShowMessage('Nenhum resultado encontrado para faixa de valores!');
end;

{ Fim métodos da classe TQuerys }

procedure TFQuestao2.btnConsultarClick(Sender: TObject);
var aux: String;
begin
  aux := CampoPesquisa.Text;

  if (aux = '') then begin
    ShowMessage('Insira algo!');
    Exit;
  end;

  case RadioOp.ItemIndex of
    0: dados.ConsultarDescricao(aux);
    1: dados.ConsultarFabricante(aux);
    2: dados.ConsultarMonitor(aux);
  end;

end;

procedure TFQuestao2.btnConsultarFaixaClick(Sender: TObject);
begin
  if ((CampoInicio.Text='')or(CampoFim.Text='')) then begin
    ShowMessage('Preencha a faixa de inicio e fim!');
    Exit;
  end;
  dados.ConsultarCapacidade(StrToInt(CampoInicio.Text), StrToInt(CampoFim.Text));
end;

procedure TFQuestao2.FormShow(Sender: TObject);
begin
  dados := TQuerys.Create(FQuestao2);
  dados.Parent := FQuestao2;
  dados.Top := 20;
  dados.Left := 20;
  dados.Width := 220;
  dados.Height := 310;

  dados.NomeArquivo := 'C:\Users\thamo\Dropbox\SI\4° SEMESTRE\LINGUAGEM DE PROGRAMAÇÃO VISUAL\provas\aval2\dados.txt';

end;

procedure TFQuestao2.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
