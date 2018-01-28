unit UExercicio2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Buttons;

type
  TFExercicio2 = class(TForm)
    Grid: TStringGrid;
    Button1: TButton;
    lstNumeros: TListBox;
    lstCaracteres: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio2: TFExercicio2;

implementation

{$R *.dfm}

procedure TFExercicio2.Button1Click(Sender: TObject);
var i, j, k: integer;
  aux, num, car: string;
begin
  for i := 0 to Grid.ColCount - 1 do
  begin
    for j := 0 to Grid.RowCount - 1 do
    begin
      aux := Grid.Cells[i,j];
      num := '';
      car := '';
      for k := 1 to Length(aux) - 1 do
        if (aux[k] in ['0','1','2','3','4','5','6','7','8','9']) then
          num := num + aux[k]
        else
          car := car + aux[k];
      if (num <> '') then
        lstNumeros.Items.Add(num);
      if (car <> '') then
        lstCaracteres.Items.Add(car);
    end;
  end;

end;

procedure TFExercicio2.FormShow(Sender: TObject);
var i, j, k: integer;
  aleatorios, nova: string;
begin
  Randomize;

  aleatorios := 'abc0de1f2g3hi4jkl5mno6pqr7stu8vwx9yz';

  for i := 0 to Grid.ColCount - 1 do
  begin
    for j := 0 to Grid.RowCount - 1 do
    begin
      nova := '';
      for k := 1 to 7 do
        nova := nova + aleatorios[random(Length(aleatorios)) + 1];
      Grid.Cells[i,j] := nova;
    end;
  end;
end;

procedure TFExercicio2.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
