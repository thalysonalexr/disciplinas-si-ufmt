unit UExercicio2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFExercicio2 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio2: TFExercicio2;

implementation

{$R *.dfm}

procedure TFExercicio2.Button1Click(Sender: TObject);
var i, j: Integer;
    linha, revStr: String;
begin
    if (Memo1.Lines.Count = 0) then
        ShowMessage('Memo vazio! Insira algo!')
    else
    begin
        for i := 0 to Memo1.Lines.Count - 1 do begin
            revStr := '';
            linha := Memo1.Lines[i];
            for j := Length(linha) downto 1 do
                revStr := revStr + linha[j];
            Memo1.Lines[i] := revStr;
        end;
    end;
end;

procedure TFExercicio2.Button2Click(Sender: TObject);
var i, j: Integer;
    aux: String;
begin
    if (Memo1.Lines.Count = 0) then
        ShowMessage('Memo vazio! Insira algo!')
    else
    begin
        for i := 0 to Memo1.Lines.Count - 1 do begin
            aux := '';
            for j := 1 to Length(Memo1.Lines[i]) do
                if (Memo1.Lines[i][j] <> ' ') then
                    aux := aux + Memo1.Lines[i][j];
            Memo1.Lines[i] := aux;
        end;
    end;
end;

procedure TFExercicio2.SpeedButton1Click(Sender: TObject);
begin
    Close;
end;

end.
