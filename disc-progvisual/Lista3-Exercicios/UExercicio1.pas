unit UExercicio1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, ComCtrls;

type
  TFExercicio1 = class(TForm)
    Button2: TButton;
    SpeedButton1: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grid1: TStringGrid;
    Grid2: TStringGrid;
    Button3: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    Sair: TButton;
    Calcular: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CalcularClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  ManipulacaoValores = class
  public
    function SomarValores(Grid1, Grid2: TStringGrid): Real;
    procedure Operacoes(lista1, lista2, listaOp, listaR: TListBox);
  end;

var
  FExercicio1: TFExercicio1;
  calc: ManipulacaoValores;

implementation

{$R *.dfm}

function ManipulacaoValores.SomarValores(Grid1, Grid2: TStringGrid): Real;
var i, j, soma: Integer;
begin
    if ((Grid1.ColCount <> Grid2.ColCount) or (Grid1.RowCount <> Grid2.RowCount))
    then begin
        ShowMessage('Os GRIDS devem ter o mesmo tamanho!');
        Exit;
    end;
    soma := 0;
    for i := 0 to Grid1.ColCount - 1 do begin
        for j := 0 to Grid1.RowCount - 1 do begin
            soma := soma + StrToInt(Grid1.Cells[i,j]) + StrToInt(Grid2.Cells[i,j]);
        end;
    end;
    Result := soma;
end;

procedure ManipulacaoValores.Operacoes(lista1, lista2, listaOp, listaR: TListBox);
var i, v1, v2: Integer;
    res: Real;
begin
    if ((lista1.Count <> lista2.Count) or (lista1.Count <> listaOp.Count)) then
    begin
        ShowMessage('As listas devem ter o mesmo tamanho!');
        Exit;
    end;

    for i := 0 to lista1.Count - 1 do begin
        v1 := StrToInt(lista1.Items[i]);
        v2 := StrToInt(lista2.Items[i]);
        case (listaOp.Items[i][1]) of
            '+': res := v1 + v2;
            '-': res := v1 - v2;
            '*': res := v1 * v2;
            '/': res := v1 / v2;
        end;
        listaR.Items.Add(FloatToStr(res));
    end;

end;

procedure TFExercicio1.Button1Click(Sender: TObject);
begin
    ShowMessage('Soma: '+FloatToStr(calc.somarValores(Grid1, Grid2)));
end;

procedure TFExercicio1.CalcularClick(Sender: TObject);
begin
    ListBox4.Clear;
    calc.Operacoes(ListBox1, ListBox2, ListBox3, ListBox4);
end;

procedure TFExercicio1.FormShow(Sender: TObject);
var i, j: Integer;
    op: String[4];
begin
    Randomize;
    for i := 0 to Grid1.ColCount - 1 do begin
        for j := 0 to Grid2.RowCount - 1 do begin
            Grid1.Cells[i, j] := IntToStr(Random(10) + 1);
            Grid2.Cells[i, j] := IntToStr(Random(10) + 1);
        end;
    end;

    op := '+-*/';

    for i := 1 to 10 do begin
        ListBox1.Items.Add(IntToStr(Random(10) + 1));
        ListBox2.Items.Add(IntToStr(Random(10) + 1));
        ListBox3.Items.Add(op[Random(4)+1]);
    end;

    calc := ManipulacaoValores.Create;
end;

procedure TFExercicio1.SairClick(Sender: TObject);
begin
    Close;
end;

procedure TFExercicio1.SpeedButton1Click(Sender: TObject);
begin
    FExercicio1.Close;
end;

end.
