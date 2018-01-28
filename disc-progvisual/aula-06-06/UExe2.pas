unit UExe2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Grids;

type
  TFExe2 = class(TForm)
    Grid: TStringGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Lista1: TListBox;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    Memo: TMemo;
    SpeedButton1: TSpeedButton;
    Button2: TButton;
    spdBtnSair: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure spdBtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExe2: TFExe2;

implementation

{$R *.dfm}

procedure TFExe2.BitBtn1Click(Sender: TObject);
var col, lin: integer;
begin
  randomize;
  for col := 0 to Grid.ColCount - 1 do
    for lin := 0 to Grid.RowCount - 1 do
      Grid.Cells[col, lin] := Lista1.Items[random(Lista1.Items.Count)];

end;

procedure TFExe2.BitBtn2Click(Sender: TObject);
var coluna, linha: integer;
begin
  for coluna := 0 to Grid.ColCount - 1 do
    for linha := 0 to Grid.RowCount - 1 do
      Grid.Cells[coluna, linha] := '';

end;

procedure TFExe2.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFExe2.Button2Click(Sender: TObject);
var coluna, linha, i: integer;
  aux1, aux2: string;
begin
  for coluna := 0 to Grid.ColCount - 1 do
    for linha := 0 to Grid.RowCount - 1 do
    begin
      aux1 := Grid.Cells[coluna, linha];
      aux2 := '';
      for i := Length(aux1) downto  1 do
        aux2 := aux2 + aux1[i];
      Grid.Cells[coluna, linha] := aux2;
    end;
end;

procedure TFExe2.Excluir1Click(Sender: TObject);
begin
  Lista1.Items.Delete(Lista1.ItemIndex);
end;

procedure TFExe2.Inserir1Click(Sender: TObject);
begin
  Lista1.Items.Add(InputBox('Entrada de dados', 'Digite uma palavra', ''));
end;

procedure TFExe2.spdBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFExe2.SpeedButton1Click(Sender: TObject);
var coluna, linha, cont, i: integer;
begin
  Memo.Clear;
  for coluna := 0 to Grid.ColCount - 1 do
    for linha := 0 to Grid.RowCount - 1 do
    begin
      cont := 0;
      for i := 0 to Length(Grid.Cells[coluna, linha]) - 1 do
        if (Grid.Cells[coluna, linha][i] in ['a','e','i','o','u','A','E','I','O','U']) then
          cont := cont + 1;
      Memo.Lines.Add('(Col:'+IntToStr(coluna)+', Lin:'+IntToStr(linha)+') = ' + IntToStr(cont));
    end;
end;

end.
