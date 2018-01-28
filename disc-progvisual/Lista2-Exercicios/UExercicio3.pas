unit UExercicio3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids;

type
  TFExercicio3 = class(TForm)
    Grid: TStringGrid;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    SpeedButton1: TSpeedButton;
    ListBox1: TListBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio3: TFExercicio3;
  palavras: array[1..10] of String = ('UFMT', 'Delphi', 'Turbo',
                                      'Borland', 'Linguagem', 'Programação',
                                      'Visual', 'Sistemas', 'Informação',
                                      'Pascal');

implementation

{$R *.dfm}

procedure TFExercicio3.Button1Click(Sender: TObject);
var i, j: Integer;
begin
    Randomize;
    for i := 0 to Grid.ColCount - 1 do
        for j := 0 to Grid.RowCount -1 do
            Grid.Cells[i,j] := palavras[Random(Length(palavras)) + 1];
end;

procedure TFExercicio3.Button2Click(Sender: TObject);
var i, j, k, quant: Integer;
    aux: String;
begin
    ListBox1.Clear;
    for i := 0 to Grid.ColCount - 1 do begin
        for j:= 0 to Grid.RowCount - 1 do begin
            quant := 0;
            aux := Grid.Cells[i, j];
            for k := 1 to Length(aux) do
                if (aux[k] in ['A','E','I','O','U','a','e','i','o','u']) then
                    quant := quant + 1;
            ListBox1.Items.Add('Cell->(' + IntToStr(i) + ', '
                     + IntToStr(j) + ') = ' + IntToStr(quant));
        end;
    end;
end;

procedure TFExercicio3.FormShow(Sender: TObject);
var i, j: Integer;
begin
    Randomize;
    for i := 0 to Grid.ColCount - 1 do
        for j := 0 to Grid.RowCount -1 do
            Grid.Cells[i,j] := palavras[Random(Length(palavras)) + 1];
end;

procedure TFExercicio3.SpeedButton1Click(Sender: TObject);
begin
    Close;
end;

end.
