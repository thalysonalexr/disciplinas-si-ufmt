unit UExercicio3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TFExercicio3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  PalavrasGrid = class(TStringGrid)
  public
    procedure Preencher();
    procedure Verificar();
  end;

var
  FExercicio3: TFExercicio3;
  Grid1: PalavrasGrid;

implementation

{$R *.dfm}

procedure PalavrasGrid.Preencher();
var i, j: Integer;
    palavras: array[1..5] of String;
begin
    palavras[1] := 'UFMT';
    palavras[2] := 'Sistemas';
    palavras[3] := 'Ciência';
    palavras[4] := 'Computação';
    palavras[5] := 'a torre da derrota';

    Randomize;
    for i := 0 to ColCount - 1 do begin
        for j := 0 to RowCount - 1 do begin
            Cells[i, j] := palavras[Random(5)+1];
        end;
    end;
        
end;

procedure PalavrasGrid.Verificar();
var i, j, k: Integer;
    aux, nova: String;
    GridR: TStringGrid;
begin
    GridR := TStringGrid.Create(FExercicio3);
    GridR.Parent := FExercicio3;

    for i := 0 to ColCount - 1 do begin
        for j := 0 to RowCount - 1 do begin
            nova := '';
            aux := Cells[i, j];
            for k := 1 to Length(aux) do
                if (aux[k] = ' ') then
                    repeat
                        Delete(aux, k, 1);
                    until (aux[k] <> ' ');
            for k := Length(aux) downto 1 do
                nova := nova + aux[k];
            if (nova = aux) then
                GridR.Cells[i, j] := 'Sim'
            else GridR.Cells[i, j] := 'Não';
        end;
    end;
    
    GridR.FixedCols := FixedCols;
    GridR.FixedRows := FixedRows;
    GridR.ColCount := ColCount;
    GridR.RowCount := RowCount;
    GridR.DefaultRowHeight := DefaultRowHeight;
    GridR.DefaultColWidth := DefaultColWidth;
    GridR.Width := Width;
    GridR.Height:= Height;
    GridR.Top := 125;
    GridR.Left := 20;
end;

procedure TFExercicio3.Button1Click(Sender: TObject);
begin
    Grid1.Preencher();
end;

procedure TFExercicio3.Button2Click(Sender: TObject);
begin
    Grid1.Verificar();
end;

procedure TFExercicio3.FormShow(Sender: TObject);
begin
    Grid1 := PalavrasGrid.Create(FExercicio3);
    Grid1.Parent := FExercicio3;
    Grid1.FixedCols := 0;
    Grid1.FixedRows := 0;
    Grid1.ColCount := 3;
    Grid1.RowCount := 3;
    Grid1.DefaultRowHeight := 20;
    Grid1.DefaultColWidth := 80;
    Grid1.Width := 250;
    Grid1.Height:= 90;
    Grid1.Top := 20;
    Grid1.Left := 20;

end;

end.
