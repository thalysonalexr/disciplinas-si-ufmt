unit UExercicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids;

type
  TForm1 = class(TForm)
    Grid1: TStringGrid;
    Grid2: TStringGrid;
    Grid3: TStringGrid;
    GridResultado: TStringGrid;
    spdBtnSair: TSpeedButton;
    Button1: TButton;
    btnRandom: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure spdBtnSairClick(Sender: TObject);
    procedure btnRandomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnRandomClick(Sender: TObject);
begin
    Form1.FormShow(Form1);
end;

procedure TForm1.Button1Click(Sender: TObject);
var i, j, valor1, valor2: integer;
begin
    for i := 0 to Grid1.ColCount - 1 do begin
        for j := 0 to Grid2.RowCount - 1 do begin
            valor1 := StrToInt(Grid1.Cells[i, j]);
            valor2 := StrToInt(Grid3.Cells[i, j]);
            case (Grid2.Cells[i, j][1]) of
                '+': GridResultado.Cells[i, j] := IntToStr(valor1 + valor2);
                '-': GridResultado.Cells[i, j] := IntToStr(valor1 - valor2);
                '*': GridResultado.Cells[i, j] := IntToStr(valor1 * valor2);
                '/': GridResultado.Cells[i, j] := FloatToStr(valor1 / valor2);
            end;
        end;
    end;

end;

procedure TForm1.FormShow(Sender: TObject);
var i, j: integer;
    op: array[0..3] of char;
begin
    op[0] := '+'; op[1] := '-'; op[2] := '*'; op[3] := '/';
    randomize;
    for i := 0 to Grid1.ColCount - 1 do begin
        for j := 0 to Grid1.RowCount - 1 do begin
            Grid1.Cells[i, j] := IntToStr(random(10) + 1);
            Grid2.Cells[i, j] := op[random(4)];
            Grid3.Cells[i, j] := IntToStr(random(10) + 1);
        end;
    end;
end;

procedure TForm1.spdBtnSairClick(Sender: TObject);
begin
    Close;
end;

end.
