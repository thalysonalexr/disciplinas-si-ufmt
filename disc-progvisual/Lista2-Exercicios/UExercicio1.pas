unit UExercicio1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons;

type
  TFExercicio1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    SpeedButton1: TSpeedButton;
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio1: TFExercicio1;

implementation

{$R *.dfm}

procedure TFExercicio1.Button1Click(Sender: TObject);
var linha: Integer;
    aux: string;
begin
    for linha := 0 to ListBox1.Count - 1 do
    begin
        aux := ListBox1.Items[linha];
        aux := IntToStr(Length(aux)) + ' - ' +  aux;
        ListBox1.Items[linha] := aux;
    end;
end;

procedure TFExercicio1.Excluir1Click(Sender: TObject);
begin
    if (ListBox1.Items.Count = 0) then
        ShowMessage('Não há nada à ser excluído!')
    else
    if (Listbox1.ItemIndex = -1) then
        ShowMessage('Selecione a linha a ser excluida!')
    else
        ListBox1.Items.Delete(ListBox1.ItemIndex);

end;

procedure TFExercicio1.Inserir1Click(Sender: TObject);
var aux: string;
begin
    aux := InputBox('Caixa de texto', 'Digite um texto', '');
    if (aux = '') then
        ShowMessage('Texto vazio! Digite algo!')
    else
        ListBox1.Items.Add(aux);
end;

procedure TFExercicio1.SpeedButton1Click(Sender: TObject);
begin
    Close;
end;

end.
