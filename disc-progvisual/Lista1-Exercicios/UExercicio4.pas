unit UExercicio4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TFExercicio04 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    Memo2: TMemo;
    btnTxt1Txt2: TButton;
    btnTxt2Txt1: TButton;
    CampoPesquisa: TEdit;
    CampoSubstituir: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnTxt1Txt2Click(Sender: TObject);
    procedure btnTxt2Txt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio04: TFExercicio04;

implementation

{$R *.dfm}

procedure TFExercicio04.btnTxt1Txt2Click(Sender: TObject);
var i, j: integer;
  auxStr: string;
begin
  Memo2.Lines.Clear;
  for i := 0 to Memo1.Lines.Count - 1 do begin
    auxStr := Memo1.Lines[i];
    for j := 1 to Length(auxStr) do begin
      if (auxStr[j] = CampoPesquisa.Text[1]) then
        auxStr[j] := CampoSubstituir.Text[1];
    end;
    Memo2.Lines.Add(auxStr);
  end;
end;

procedure TFExercicio04.btnTxt2Txt1Click(Sender: TObject);
var i, j: integer;
  auxStr: string;
begin
  Memo1.Lines.Clear;
  for i := 0 to Memo2.Lines.Count - 1 do begin
    auxStr := Memo2.Lines[i];
    for j := 1 to Length(auxStr) do begin
      if (auxStr[j] = CampoPesquisa.Text[1]) then
        auxStr[j] := CampoSubstituir.Text[1];
    end;
    Memo1.Lines.Add(auxStr);
  end;
end;

procedure TFExercicio04.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
