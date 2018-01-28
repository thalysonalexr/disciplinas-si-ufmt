unit UExe3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TFExe3 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Lista1: TListBox;
    Lista2: TListBox;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    Inserir1: TMenuItem;
    btnMoverDir: TButton;
    btnMoverEsq: TButton;
    btnMoverAllDir: TButton;
    btnMoveAllEsq: TButton;
    Inserir2: TMenuItem;
    procedure Inserir1Click(Sender: TObject);
    procedure Inserir2Click(Sender: TObject);
    procedure btnMoverDirClick(Sender: TObject);
    procedure btnMoverEsqClick(Sender: TObject);
    procedure btnMoverAllDirClick(Sender: TObject);
    procedure btnMoveAllEsqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExe3: TFExe3;

implementation

{$R *.dfm}

procedure TFExe3.btnMoveAllEsqClick(Sender: TObject);
var i: integer;
begin
  if (Lista2.Items.Count = 0) then
  begin
    MessageDlg('Não há nada para mover na LISTA 2', mtInformation, [mbOK], 0);
    Lista2.SetFocus;
    exit;
  end;

  for i := 0 to (Lista2.Items.Count - 1) do
    Lista1.Items.Add(Lista2.Items[i]);
  Lista2.Clear;
end;

procedure TFExe3.btnMoverAllDirClick(Sender: TObject);
var i: integer;
begin
  if (Lista1.Items.Count = 0) then
  begin
    MessageDlg('Não há nada para mover na LISTA 1', mtInformation, [mbOK], 0);
    Lista1.SetFocus;
    exit;
  end;

  for i := 0 to (Lista1.Items.Count - 1) do
    Lista2.Items.Add(Lista1.Items[i]);
  Lista1.Clear;
end;

procedure TFExe3.btnMoverDirClick(Sender: TObject);
begin
  if (Lista1.ItemIndex = -1) then
  begin
    MessageDlg('Não há linhas selecionadas na lista 1', mtInformation, [mbOK], 0);
    Lista1.SetFocus;
    exit;
  end;
  Lista2.Items.Add(Lista1.Items[Lista1.Itemindex]);
  Lista1.Items.Delete(Lista1.ItemIndex);
end;

procedure TFExe3.btnMoverEsqClick(Sender: TObject);
begin
  if (Lista2.ItemIndex = -1) then
  begin
    MessageDlg('Não há linhas selecionadas na lista 2', mtInformation, [mbOK], 0);
    Lista2.SetFocus;
    exit;
  end;
  Lista1.Items.Add(Lista2.Items[Lista2.Itemindex]);
  Lista2.Items.Delete(Lista2.ItemIndex);
end;

procedure TFExe3.Inserir1Click(Sender: TObject);
begin
  Lista1.Items.Add(InputBox('Entrada de dados', 'Digite um texto', ''));
end;

procedure TFExe3.Inserir2Click(Sender: TObject);
begin
  Lista2.Items.Add(InputBox('Entrada de dados', 'Digite um texto', ''));
end;

end.
