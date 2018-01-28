unit UExercicio1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TFExercicio1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
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
var i, j: integer;
  aux: string;
begin
  for i := 0 to Memo1.Lines.Count -1 do
  begin
    aux := Memo1.Lines[i];
    aux := LowerCase(aux);
    for j := 1 to Length(aux) do
    begin
      aux[1] := UpCase(aux[1]);
      if (aux[j] = ' ') then
        aux[j+1] := UpCase(aux[j+1]);
    end;
    Memo1.Lines[i] := aux;
  end;
end;

procedure TFExercicio1.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
