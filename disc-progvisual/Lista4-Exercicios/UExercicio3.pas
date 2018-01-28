unit UExercicio3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFExercicio3 = class(TForm)
    Label1: TLabel;
    btnApresentar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnApresentarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TCalculadora = class(TEdit)
  public
    NomeArquivoR, NomeArquivoS: String;
    constructor Create(C: TComponent);
    procedure ApresentarD();
  end;

var
  FExercicio3: TFExercicio3;
  valores: TCalculadora;

implementation

{$R *.dfm}

constructor TCalculadora.Create(C: TComponent);
begin
    inherited Create(C);
    Width := 50;
    Top := 25;
    Left := 20;
end;

procedure TCalculadora.ApresentarD();
var logR, logS: TextFile;
    texto: String;
    soma: Integer;
begin
    AssignFile(logR, NomeArquivoR);
    AssignFile(logS, NomeArquivoS);
    Reset(logR);
    Reset(logS);
    soma := 0;

    while not Eof(logR) do begin
        Readln(logR, texto);
        soma := soma + strtoint(texto);
    end;

    while not Eof(logS) do begin
        Readln(logS, texto);
        soma := soma + strtoint(texto);
    end;

    Text := FormatFloat('#,##0.00', soma/2);
end;

procedure TFExercicio3.btnApresentarClick(Sender: TObject);
begin
    valores.ApresentarD();
end;

procedure TFExercicio3.FormShow(Sender: TObject);
begin
    valores := TCalculadora.Create(FExercicio3);
    valores.Parent := FExercicio3;
    valores.NomeArquivoR := 'C:/arquivos_delphi/R.txt';
    valores.NomeArquivoS := 'C:/arquivos_delphi/S.txt';
end;

end.
