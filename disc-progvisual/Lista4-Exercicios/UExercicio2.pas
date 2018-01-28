unit UExercicio2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFExercicio2 = class(TForm)
    btnApresentar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnApresentarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TValores = class(TListBox)
  public
    NomeArquivo: String;
    constructor Create(C: TComponent);
    procedure ApresentarMaiorMenor();
    procedure ApresentarMedia();
  end;

var
  FExercicio2: TFExercicio2;
  numeros: TValores;

implementation

{$R *.dfm}

constructor TValores.Create(C: TComponent);
begin
    inherited Create(C);
    Width := 150;
    Height := 120;
    Top := 20;
    Left := 20;
end;

procedure TValores.ApresentarMaiorMenor();
var log: TextFile;
    menor, maior, aux: Integer;
    texto: String;
begin
    Clear;
    AssignFile(log, NomeArquivo);
    Reset(log);

    Readln(log, texto);
    menor := strtoint(texto);
    maior := strtoint(texto);

    while not Eof(log) do begin
        Readln(log, texto);
        aux := strtoint(texto);
        if (aux < menor) then
            menor := aux;
        if (aux > maior) then
            maior := aux;
    end;
    CloseFile(log);

    Items.Add('Menor valor: '+inttostr(menor));
    Items.Add('Maior valor: '+inttostr(maior));
end;

procedure TValores.ApresentarMedia();
var log: TextFile;
    total, soma: Integer;
    texto: String;
begin
    AssignFile(log, NomeArquivo);
    Reset(log);
    soma := 0;
    total := 0;
    while not Eof(log) do begin
        Readln(log, texto);
        soma := soma + strtoint(texto);
        Inc(total);
    end;
    CloseFile(log);
    Items.Add('Média: '+FormatFloat('#,##0.00', soma/total));
end;

procedure TFExercicio2.btnApresentarClick(Sender: TObject);
begin
    numeros.ApresentarMaiorMenor();
    numeros.ApresentarMedia;
end;

procedure TFExercicio2.FormShow(Sender: TObject);
begin
    numeros := TValores.Create(FExercicio2);
    numeros.Parent := FExercicio2;
    numeros.NomeArquivo := 'C:/arquivos_delphi/valores.txt';
end;

end.
