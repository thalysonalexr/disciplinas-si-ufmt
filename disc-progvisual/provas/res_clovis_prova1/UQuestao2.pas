unit UQuestao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, ExtCtrls;

type
  TFQuestao2 = class(TForm)
    Panel1: TPanel;
    Button3: TButton;
    CampoOriginal: TEdit;
    Button2: TButton;
    CampoResultado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQuestao2: TFQuestao2;

implementation

{$R *.dfm}

procedure TFQuestao2.Button2Click(Sender: TObject);
var i:integer;
    str:string;
begin
if (CampoOriginal.Text='') then
begin
  messagedlg('Informe o texto',mtinformation,[mbok],0);
  CampoOriginal.setfocus;
  exit;
end;

str:=trim(CampoOriginal.text);
i:=1;
while str[i] = ' ' do
 delete(str, i, 1);

i:=1;
while i < length(str) - 1 do
begin
  if((str[i] = str[i+1]) and (str[i] = ' ')) then
    delete(str, i+1, 1)
  else
    i:=i+1;
end;
CampoResultado.text:=str;
end;


procedure TFQuestao2.Button3Click(Sender: TObject);
begin
  close;
end;

end.
