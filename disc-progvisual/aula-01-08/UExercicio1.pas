unit UExercicio1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TFExercicio1 = class(TForm)
    btnCalcular: TButton;
    btnSair: TButton;
    btnExportar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TNumbers = class(TStringGrid)
  public
    Arquivo: String;
    constructor Create(C: TComponent);
    function Fatorial(x, y: Integer): String;
    function ParImpar(valor: Integer): String;
    procedure Verificar();
    procedure Exportar();
  end;

var
  FExercicio1: TFExercicio1;
  numeros: TNumbers;

implementation

{$R *.dfm}

constructor TNumbers.Create(C: TComponent);
var i, j: Integer;
begin
  inherited Create(C);

  FixedCols := 0;
  FixedRows := 0;
  ColCount := 3;
  RowCount := 10;
  Height := 200;
  Width := 220;
  Top := 10;
  Left := 10;

  Randomize;
  for i := 0 to RowCount -1 do
    Cells[0, i] := IntToStr(Random(6)+2);
end;

function TNumbers.Fatorial(x, y: Integer): String;
var i, r: Integer;
begin
  r := StrToInt(Cells[x, y]);

  for i := r-1 downto 1 do
    r := r * i;

  Result := IntToStr(r);
end;

function TNumbers.ParImpar(valor: Integer): String;
begin
  if ((valor mod 2)=1) then
    Result := 'IMPAR'
  else
    Result := 'PAR';
end;

procedure TNumbers.Verificar();
var i: Integer;
begin
  for i := 0 to RowCount - 1 do begin
    Cells[1, i] := Fatorial(0, i);
    Cells[2, i] := ParImpar(StrToInt(Cells[0, i]));
  end;

end;

procedure TNumbers.Exportar();
var i, j: Integer;
  linha: String;
  Log_Arquivo: TextFile;
begin
  AssignFile(Log_Arquivo, Arquivo);
  Rewrite(Log_Arquivo);

  for i := 0 to RowCount - 1 do begin
    linha := '';
    for j := 0 to ColCount - 1 do
      linha := linha + Cells[j, i] + ';';
    Delete(linha, Length(linha),1);
    Writeln(Log_Arquivo, linha);
  end;
  CloseFile(Log_Arquivo);
end;

procedure TFExercicio1.btnCalcularClick(Sender: TObject);
begin
  numeros.Verificar();
end;

procedure TFExercicio1.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFExercicio1.btnExportarClick(Sender: TObject);
begin
  numeros.Arquivo := 'C:\arquivos_delphi\numeros.csv';
  numeros.Exportar();
end;

procedure TFExercicio1.FormShow(Sender: TObject);
begin
  numeros := TNumbers.Create(FExercicio1);
  numeros.Parent := FExercicio1;
end;

end.
