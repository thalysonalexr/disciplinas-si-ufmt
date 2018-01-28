unit UExercicio3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Buttons, StdCtrls;

type
  TFExercicio3 = class(TForm)
    btnCalcular: TButton;
    btnSair: TSpeedButton;
    Grid: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio3: TFExercicio3;

implementation

{$R *.dfm}

procedure TFExercicio3.btnCalcularClick(Sender: TObject);
var i, j, res, tam: Integer;
    aux: string;
begin
    for i := 0 to Grid.RowCount - 1 do begin
        aux := Grid.Cells[0, i];
        res := 0;
        tam := Length(aux);
        for j := 1 to Length(aux) do begin
            res := res + StrToInt(aux[j]) * tam;
            tam := tam - 1;
        end;
        Grid.Cells[1, i] := IntToStr(res);
    end;
end;

procedure TFExercicio3.btnSairClick(Sender: TObject);
begin
    Close;
end;

procedure TFExercicio3.FormShow(Sender: TObject);
var i: Integer;
begin
    Randomize;
    for i := 0 to Grid.RowCount - 1 do
        Grid.Cells[0, i] := IntToStr(Random(8999) + 1000);
end;

end.
