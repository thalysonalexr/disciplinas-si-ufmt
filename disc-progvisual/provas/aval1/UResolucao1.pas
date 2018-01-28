unit UResolucao1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TFResolucao1 = class(TForm)
    Grid: TStringGrid;
    GroupBox1: TGroupBox;
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

var
  FResolucao1: TFResolucao1;

implementation

{$R *.dfm}

procedure TFResolucao1.Button1Click(Sender: TObject);
var i, j, k, soma: Integer;
  aux: String;
begin
  for i := 0 to Grid.ColCount - 1 do
  begin
    for j := 0 to Grid.RowCount - 1 do
    begin
      soma := 0;
      aux := Grid.Cells[i, j];
      for k := 1 to Length(aux) do
      begin
        if (aux[k] in ['0','1','2','3','4','5','6','7','8','9']) then
          soma := soma + StrToInt(aux[k]);
      end;
      Grid.Cells[i, j] := IntToStr(soma);
    end;
  end;

end;

procedure TFResolucao1.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFResolucao1.FormShow(Sender: TObject);
var i, j, k: Integer;
alf, aux: String;

begin
  alf := 'A0B1C2D3E4F5G6H7I8J9K0L1M2N3O4P5Q6R7S8T9U0V1W2X3Y4Z';

  Randomize;
  for i := 0 to Grid.ColCount - 1 do
  begin
     for j := 0 to Grid.RowCount - 1 do
     begin
        aux := '';
        for k := 1 to 10 do
          aux := aux + alf[Random(Length(alf))+1];
        Grid.Cells[i, j] := aux;
     end;
  end;

end;

end.
