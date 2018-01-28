unit UExercicio4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids;

type
  TFExercicio4 = class(TForm)
    Grid1: TStringGrid;
    Grid2: TStringGrid;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    RadioOperacoes: TRadioGroup;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio4: TFExercicio4;

implementation

{$R *.dfm}

procedure TFExercicio4.Button1Click(Sender: TObject);
var i, j: Integer;
begin
    // Limpar o String Grid antes de apresentar a diagonal solicitada
    for i := 0 to Grid1.ColCount - 1 do
        for j := 0 to Grid2.RowCount - 1 do
            Grid2.Cells[i, j] := '';

    case RadioOperacoes.ItemIndex of
        0:
        begin
            for i := 0 to Grid1.ColCount - 1 do
                for j := 0 to Grid2.RowCount - 1 do
                    if (i > j) then
                        Grid2.Cells[i, j] := Grid1.Cells[i, j];
        end;
        1:
        begin
            for i := 0 to Grid1.ColCount - 1 do
                for j := 0 to Grid2.RowCount - 1 do
                    if (i < j) then
                        Grid2.Cells[i, j] := Grid1.Cells[i, j];
        end;
        2:
        begin
            for i := 0 to Grid1.ColCount - 1 do
                for j := 0 to Grid2.RowCount - 1 do
                    if (i = j) then
                        Grid2.Cells[i, j] := Grid1.Cells[i, j];
        end;
    end;
end;

procedure TFExercicio4.FormShow(Sender: TObject);
var i, j: Integer;
begin
    Randomize;
    for i := 0 to Grid1.ColCount - 1 do
        for j := 0 to Grid2.RowCount - 1 do
            Grid1.Cells[i, j] := IntToStr(Random(10) + 1);

end;

procedure TFExercicio4.SpeedButton1Click(Sender: TObject);
begin
    Close;
end;

end.
