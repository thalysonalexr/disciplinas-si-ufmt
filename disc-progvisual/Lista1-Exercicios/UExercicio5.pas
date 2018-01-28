unit UExercicio5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFExercicio05 = class(TForm)
    ListBox1: TListBox;
    Label1: TLabel;
    btnVerificar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio05: TFExercicio05;

implementation

{$R *.dfm}

procedure TFExercicio05.btnVerificarClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to ListBox1.Count - 1 do
    if ((StrToInt(ListBox1.Items[i]) mod 2) = 0) then
      ListBox1.Items[i] := ListBox1.Items[i] + ' é PAR'
    else
      ListBox1.Items[i] := ListBox1.Items[i] + ' é ÍMPAR';
end;

procedure TFExercicio05.FormShow(Sender: TObject);
var i: integer;
begin
  for i := 1 to 100 do
    ListBox1.Items.Add(FormatFloat('000', i));
end;

end.
