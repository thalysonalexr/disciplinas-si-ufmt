unit UQuestao1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFQuestao1 = class(TForm)
    Label1: TLabel;
    CampoChave: TEdit;
    btnCriptografar: TButton;
    btnDecriptografar: TButton;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnCriptografarClick(Sender: TObject);
    procedure btnDecriptografarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TCriptografia = class(TMemo)
  public
    Chave: Integer;
    NomeArquivo: String;
    procedure Criptografar;
    procedure Decriptografar;
  end;

var
  FQuestao1: TFQuestao1;
  dados: TCriptografia;

implementation

{$R *.dfm}

// Criptografar
procedure TCriptografia.Criptografar;
var log: TextFile;
  texto, aux: String;
  i, j, idx: Integer;
begin
  Clear;
  AssignFile(log, NomeArquivo);
  Reset(log);

  while not Eof(log) do begin
    Readln(log, texto);
    Lines.Add(texto);
  end;

  // Criptografia
  for i := 0 to Lines.Count - 1 do begin
    aux := Lines[i];
    for j := 1 to Length(aux) do begin
      idx := Ord(aux[j]);
      aux[j] := Chr(idx+Chave);
    end;
    Lines[i] := aux;
  end;
  CloseFile(log);
end;

// Decriptografar
procedure TCriptografia.Decriptografar;
var log: TextFile;
  texto, aux: String;
  i, j, idx: Integer;
begin
  Clear;
  AssignFile(log, NomeArquivo);
  Reset(log);

  while not Eof(log) do begin
    Readln(log, texto);
    Lines.Add(texto);
  end;

  // Decriptografia
  for i := 0 to Lines.Count - 1 do begin
    aux := Lines[i];
    for j := 1 to Length(aux) do begin
      idx := Ord(aux[j]);
      aux[j] := Chr(idx-Chave);
    end;
    Lines[i] := aux;
  end;
  CloseFile(log);
end;

procedure TFQuestao1.btnCriptografarClick(Sender: TObject);
begin
  dados.Chave := StrToInt(CampoChave.Text);
  dados.Criptografar;
end;

procedure TFQuestao1.btnDecriptografarClick(Sender: TObject);
begin
  dados.Chave := StrToInt(CampoChave.Text);
  dados.Decriptografar;
end;

procedure TFQuestao1.FormShow(Sender: TObject);
begin
  dados := TCriptografia.Create(FQuestao1);
  dados.Parent := FQuestao1;
  dados.NomeArquivo := 'C:\Users\thamo\Dropbox\SI\4° SEMESTRE\LINGUAGEM DE PROGRAMAÇÃO VISUAL\provas\aval2\texto.txt';
  dados.Top := 20;
  dados.Left := 20;
  dados.Height := 150;
end;

procedure TFQuestao1.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
