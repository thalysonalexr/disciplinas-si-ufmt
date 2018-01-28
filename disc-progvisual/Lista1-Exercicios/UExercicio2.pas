unit UExercicio2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Menus;

type
  TFExercicio02 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    Memo1: TMemo;
    Memo2: TMemo;
    btnInverterStr: TButton;
    btnExcluirVogais: TButton;
    btnSair: TSpeedButton;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    Limpartudo1: TMenuItem;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Limpartudo1Click(Sender: TObject);
    procedure btnInverterStrClick(Sender: TObject);
    procedure btnExcluirVogaisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio02: TFExercicio02;

implementation

{$R *.dfm}

procedure TFExercicio02.btnExcluirVogaisClick(Sender: TObject);
var i, j: integer;
    newLine: string;
    aux: char;
begin
     Memo2.Clear;
     if (Memo1.Lines.Count = 0) then
        MessageDlg('Digite algo no MEMO 1!', mtInformation, [mbOK], 0)
     else
     begin
          for  i := 0 to Memo1.Lines.Count - 1 do
          begin
               newLine := '';
               for j := 0 to Length(Memo1.Lines.Strings[i]) - 1 do begin
                   aux := Memo1.Lines.Strings[i][j];
                   if ((not(aux in ['A','E','I','O','U','a','e','i','o','u'])) and (aux <> '')) then
                      newLine := newLine + aux;
               end;
               Memo2.Lines.Add(newLine);
          end;
     end;
end;

procedure TFExercicio02.btnInverterStrClick(Sender: TObject);
var i, j: integer;
    newStr: string;
begin
     ListBox2.Clear;
     if (ListBox1.Count = 0) then
        MessageDlg('Preencha a caixa de lista 1!', mtInformation, [mbOk], 0)
     else begin
          for i := 0 to ListBox1.Count - 1 do begin
              newStr := '';
              for j := Length(ListBox1.Items.Strings[i]) downto 1 do
                  newStr := newStr + ListBox1.Items.Strings[i][j];
              ListBox2.Items.Add(newStr);
          end;
     end;
end;

procedure TFExercicio02.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFExercicio02.Excluir1Click(Sender: TObject);
var idx: integer;
begin
     idx := ListBox1.ItemIndex;
     if (idx = -1) then
        MessageDlg('Selecione o item a ser excluido!', mtInformation, [mbOK], 0)
     else
          ListBox1.Items.Delete(ListBox1.ItemIndex);
end;

procedure TFExercicio02.Inserir1Click(Sender: TObject);
var aux: string;
begin
     aux := InputBox('Entrada de dados', 'Digite uma palavra', '');
     if (aux = '') then
        MessageDlg('Por favor, digite algo!', mtInformation, [mbOK], 0)
     else
         ListBox1.Items.Add(aux);
end;

procedure TFExercicio02.Limpartudo1Click(Sender: TObject);
begin
     ListBox2.Clear;
end;

end.

