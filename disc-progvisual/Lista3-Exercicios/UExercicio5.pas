unit UExercicio5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TFExercicio5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Tlista = class(TStringGrid)
  public
    constructor Create(C: TComponent; Linhas, QtdeCaracteres: Integer);
    procedure Separar();
  end;

var
  FExercicio5: TFExercicio5;
  dados: Tlista;

implementation

{$R *.dfm}

///////////////////////////////////////////////////////////////////
//
//Criar uma classe em Delphi chamada Tlista para manipulação de caracteres.
//A classe será derivada de um StringGrid e terá os seguintes membros:
//Linhas: parâmetro(construtor) responsável pela quantidade de  linhas manipuladas pelo
//grid;
//QtdeCaracteres:  parâmetro(construtor)  responsável  pela  quantidade  de  caracteres
//manipuladas nas células do grid;
//Create: Construtor para iniciar a classe.
//Separar: Método para separar as letras maiúsculas dos demais caracteres, as
//letras serão armazenadas na célula 1 e os demais caracteres na célula 2. Os
//caractares  serão  gerados  na  célula  0  aleatoriamente através  do  construtor
//create.
///////////////////////////////////////////////////////////////////

constructor TLista.Create(C: TComponent; Linhas, QtdeCaracteres: Integer);
var x, y, car: Integer;
    aux: String;
begin
    inherited Create(C);
    FixedCols := 0;
    FixedRows := 0;
    ColCount := 3;
    Height := 160;
    Width := 200;
    RowCount := Linhas;
    Randomize;

    for x := 0 to RowCount - 1 do begin
        aux := '';
        for y := 0 to QtdeCaracteres - 1 do begin
            repeat
                car := Random(97);
            until (car >= 64);
            aux := aux + Chr(car);
        end;
        Cells[0, x] := aux;
    end;
end;

procedure TLista.Separar();
var maiusculos, aux, temp: String;
    l, c: Integer;
begin
  for l := 0 to RowCount - 1 do begin
    temp := Cells[0,l];
    aux := '';
    maiusculos := '';

    for c:= 1 to length(temp) do
      if (temp[c] in ['A'..'Z']) then
       maiusculos := maiusculos + temp[c]
     else
      aux := aux+temp[c];

    Cells[1,l] := maiusculos;
    Cells[2,l] := aux;
  end;
end;

procedure TFExercicio5.Button1Click(Sender: TObject);
begin
    dados.Separar();
end;

procedure TFExercicio5.Button2Click(Sender: TObject);
begin
    Close;
end;

procedure TFExercicio5.FormShow(Sender: TObject);
begin
    dados := Tlista.Create(FExercicio5, 6, 9);
    dados.Parent := FExercicio5;
end;

end.
