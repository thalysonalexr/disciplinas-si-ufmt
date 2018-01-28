unit UExercicio3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, Buttons;

type
  TFExercicio03 = class(TForm)
    Grid1: TStringGrid;
    ListBox1: TListBox;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    btnInserir: TButton;
    Grid2: TStringGrid;
    spdBtnSair: TSpeedButton;
    btnVerificar: TButton;
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure spdBtnSairClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio03: TFExercicio03;

implementation

{$R *.dfm}

procedure TFExercicio03.btnInserirClick(Sender: TObject);
var i, j, p: integer;
begin
     if (ListBox1.Count = 0) then
        ShowMessage('Insira algo no LISTBOX!')
     else begin
         randomize;
         for i := 0 to Grid1.ColCount - 1 do
             for j := 0 to Grid1.RowCount - 1 do
                 Grid1.Cells[i, j] := ListBox1.Items[random(ListBox1.Items.Count)];
     end;

end;

procedure TFExercicio03.btnVerificarClick(Sender: TObject);
var i, j, k: integer;
  aux: string;
begin
  for i := 0 to Grid1.ColCount - 1 do begin
    for j := 0 to Grid2.RowCount - 1 do begin
      aux := '';
      for k := Length(Grid1.Cells[i, j]) downto 1 do
        aux := aux + Grid1.Cells[i, j][k];
      if (Grid1.Cells[i, j] = aux) then
        Grid2.Cells[i, j] := 'Sim'
      else
        Grid2.Cells[i, j] := 'Não'
    end;
  end;
end;

procedure TFExercicio03.Excluir1Click(Sender: TObject);
var idx: integer;
begin
     idx := ListBox1.ItemIndex;
     if (idx = -1) then
        MessageDlg('Selecione o item a ser excluido!', mtInformation, [mbOK], 0)
     else
          ListBox1.Items.Delete(ListBox1.ItemIndex);
end;

procedure TFExercicio03.Inserir1Click(Sender: TObject);
var aux: string;
begin
     if (ListBox1.Count = 5) then begin
        MessageDlg('Lista cheia, exclua itens!', mtInformation, [mbOK], 0);
        Exit;
     end;

     aux := InputBox('Entrada de dados', 'Digite uma palavra', '');

     if (aux = '') then
        MessageDlg('Por favor, digite algo!', mtInformation, [mbOK], 0)
     else
         ListBox1.Items.Add(aux);
end;

procedure TFExercicio03.spdBtnSairClick(Sender: TObject);
begin
  Close;
end;

end.
