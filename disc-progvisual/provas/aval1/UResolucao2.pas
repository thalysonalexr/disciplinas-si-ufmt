unit UResolucao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFResolucao2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    CampoTxtOriginal: TEdit;
    CampoTxtResultado: TEdit;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FResolucao2: TFResolucao2;

implementation

{$R *.dfm}

procedure TFResolucao2.Button1Click(Sender: TObject);
var i: Integer;
  aux: String;
begin
  if (Length(CampoTxtOriginal.Text) = 0) then
    ShowMessage('Por favor, digite algo!')
  else
  begin
    aux := CampoTxtOriginal.Text;
    for i := 1 to Length(aux) do
    begin
        if (aux[i] = ' ') then
        begin
            while(aux[i+1] = ' ') do
                Delete(aux, i, 1);
        end;
    end;
    if (aux[1] = ' ') then
        Delete(aux, 1, 1);
    if (aux[Length(aux)] = ' ') then
        Delete(aux, Length(aux), 1);
    CampoTxtResultado.Text := aux;

    (*
    if (aux[i] <> ' ') then
        nova := nova + aux[i]
    else if (aux[i-1] <> ' ') then
        nova := nova + ' ';
    end;
    *)
  end;
end;

procedure TFResolucao2.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
