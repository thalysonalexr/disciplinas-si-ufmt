unit UExe1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons;

type
  TFExe1 = class(TForm)
    GridDados: TStringGrid;
    bitBtnAtribuirV: TBitBtn;
    CampoValor: TEdit;
    spdBtnAtribuirNum: TSpeedButton;
    spdBtnAleatorio: TSpeedButton;
    Label1: TLabel;
    CampoMenor: TEdit;
    Label2: TLabel;
    CampoMaior: TEdit;
    SpeedButton3: TSpeedButton;
    bitBtnAtribuir: TBitBtn;
    procedure bitBtnAtribuirClick(Sender: TObject);
    procedure bitBtnAtribuirVClick(Sender: TObject);
    procedure spdBtnAtribuirNumClick(Sender: TObject);
    procedure spdBtnAleatorioClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExe1: TFExe1;

implementation

{$R *.dfm}

procedure TFExe1.bitBtnAtribuirClick(Sender: TObject);
begin
  GridDados.Cells[0,3] := '10';
  GridDados.Cells[5,5] := '10';
end;

procedure TFExe1.bitBtnAtribuirVClick(Sender: TObject);
var coluna, linha: integer;
begin
  for coluna := 0 to GridDados.ColCount - 1 do
    for linha := 0 to GridDados.RowCount - 1 do
      GridDados.Cells[coluna, linha] := 'X';

end;

procedure TFExe1.spdBtnAtribuirNumClick(Sender: TObject);
var coluna, linha: integer;
begin
  for coluna := 0 to GridDados.ColCount - 1 do
    for linha := 0 to GridDados.RowCount - 1 do
      GridDados.Cells[coluna, linha] := inttostr(strtoint(CampoValor.Text) * 2);
end;

procedure TFExe1.spdBtnAleatorioClick(Sender: TObject);
var coluna, linha: integer;
begin
  randomize;
  for coluna := 0 to GridDados.ColCount - 1 do
    for linha := 0 to GridDados.RowCount - 1 do
      GridDados.Cells[coluna, linha] := IntToStr(random(10)+1)
end;

procedure TFExe1.SpeedButton3Click(Sender: TObject);
var coluna, linha, maior, menor: integer;
begin
  menor := 0;
  maior := 0;
  for coluna := 0 to GridDados.ColCount - 1 do
    for linha := 0 to GridDados.RowCount - 1 do
      if (StrToInt(GridDados.Cells[coluna, linha]) <= 5) then
        menor := menor + 1
      else
        maior := maior + 1;

  CampoMenor.Text := IntToStr(menor);
  CampoMaior.Text := IntToStr(maior);
end;

end.
