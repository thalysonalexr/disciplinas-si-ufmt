unit UExercicio6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TFExercicio6 = class(TForm)
    btnContaSPC: TButton;
    PopupMenu1: TPopupMenu;
    Inserir: TMenuItem;
    Excluir: TMenuItem;
    btnContarCHAR: TButton;
    Edit1: TEdit;
    procedure btnContaSPCClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure InserirClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure btnContarCHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TLista = class(TListBox)
  public
    procedure QuantidadeCar(car: Char);
    procedure QuantidadeSPC();
  end;

var
  FExercicio6: TFExercicio6;
  lista: TLista;

implementation

procedure TLista.QuantidadeCar(car: Char);
var i, j, tot: Integer;
begin
    if (Count = 0) then begin
        ShowMessage('O listbox está vazio!');
        Exit;
    end;
    tot := 0;
    for i := 0 to Count - 1 do
        for j := 1 to Length(Items[i]) do
            if (car = Items[i][j]) then
                Inc(tot);

    MessageDlg('Existem '+IntToStr(tot)+
    ' caracteres '+car+' no LISTBOX',
    mtInformation, [mbOK], 0);

end;

procedure TLista.QuantidadeSPC;
var i, j, tot: Integer;
    aux: String;
begin
    if (Count = 0) then begin
        ShowMessage('O listbox está vazio!');
        Exit;
    end;
    tot := 0;
    for i := 0 to Count - 1 do begin
        aux := Items[i];
        for j := 1 to Length(aux) do
            if (aux[j] = ' ') then
                Inc(tot);
    end;
    MessageDlg('Existem '+IntToStr(tot)+' caracteres de ESPAÇO " "',
    mtInformation, [mbOK], 0);
end;

{$R *.dfm}

procedure TFExercicio6.btnContarCHARClick(Sender: TObject);
begin
    lista.QuantidadeCar(Edit1.Text[1]);
end;

procedure TFExercicio6.btnContaSPCClick(Sender: TObject);
begin
    lista.QuantidadeSPC();
end;

procedure TFExercicio6.FormShow(Sender: TObject);
begin
    lista := TLista.Create(FExercicio6);
    lista.Parent := FExercicio6;
    lista.PopupMenu := PopupMenu1;
    lista.Name := 'ListBox1';
    lista.Left := 20;
    lista.Top  := 20;
    lista.Width := 275;
    lista.Height := 120;
    lista.Items.Add('Sistemas de Informação');
    lista.Items.Add('Linguagem de Programação Visual');
    lista.Items.Add('Delphi: Object Pascal');
end;

procedure TFExercicio6.InserirClick(Sender: TObject);
var mensagem: String;
begin
    mensagem := InputBox('Caixa de texto', 'Digite algo', '');
    if (mensagem = '') then begin
        ShowMessage('Mensagem inválida!');
        Exit;
    end;
    lista.Items.Add(mensagem);
end;

procedure TFExercicio6.ExcluirClick(Sender: TObject);
begin
    if (lista.Count = 0) then begin
        ShowMessage('ListBox vazio!');
        Exit
    end else if (lista.ItemIndex = -1) then begin
        ShowMessage('Selecione um item!');
        Exit;
    end;
    lista.Items.Delete(lista.ItemIndex);
end;

end.
