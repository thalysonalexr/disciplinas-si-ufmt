unit UExercicio7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFExercicio7 = class(TForm)
    btnContarCons: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnContarConsClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TMemorando = class(TMemo)
  public
    function NumeroConsoantes(LinhasPares: Integer): Integer;
    procedure InverteLinhas();
    procedure SubstituirCaracter();
    procedure CaracterMaiusculo();
  end;

var
  FExercicio7: TFExercicio7;
  memo1: TMemorando;

implementation

{$R *.dfm}

function TMemorando.NumeroConsoantes(LinhasPares: Integer): Integer;
var i, j, k, total: Integer;
    aux, cons: String;
begin
    if (Lines.Count = 0) then begin
        NumeroConsoantes := -1;
        Exit;
    end;
    total := 0;
    cons := 'bcdfghjklmnpqrstvwxyz';
    for i := 0 to LinhasPares -1 do begin
        aux := Lines[i];
        if ((i mod 2)=0) then
            for j := 1 to Length(aux) do begin
                for k := 1 to Length(cons) do
                    if ((aux[j]=cons[k])
                    or (aux[j]=UpperCase(cons[k]))) then
                        Inc(total);
            end;
    end;
    NumeroConsoantes := total;
end;

procedure TMemorando.InverteLinhas();
var i, j: Integer;
    aux: String;
begin
    for i := 0 to Lines.Count -1 do begin
        if ((i mod 2) = 1) then begin
            aux := '';
            for j := Length(Lines[i]) downto 1 do
                aux := aux + Lines[i][j];
            Lines[i] := aux;
        end;
    end;
end;

procedure TMemorando.SubstituirCaracter();
var i, j, fim: Integer;
    aux: String;
    car: Char;
begin
    for i := 0 to Lines.Count - 1 do begin
        aux := Lines[i];
        for j := 1 to Length(aux) do
            if ((aux[j] = ' ') and (aux[j+1] <> ' ')) then begin
                car := aux[j+1];
                fim := j;
                Break;
            end;
        for j := 1 to fim do
            if (aux[j] = ' ') then
                aux[j] := car;
        Lines[i] := aux;
    end;
end;

procedure TMemorando.CaracterMaiusculo();
var i, j: Integer;
    aux: String;
begin
    for i := 0 to Lines.Count - 1 do begin
        aux := Lines[i];
        aux := LowerCase(aux);
        for j := 1 to Length(aux) do begin
            aux[1] := UpCase(aux[1]);
            if (aux[j] = ' ') then
                aux[j+1] := UpCase(aux[j+1]);
        end;
        Lines[i] := aux;
    end;
end;

procedure TFExercicio7.btnContarConsClick(Sender: TObject);
var quant: Integer;
begin
    quant := memo1.NumeroConsoantes(3);
    if (quant = -1) then begin
        ShowMessage('O memorando está vazio!');
        Exit;
    end;
    MessageDlg('Tem '+IntToStr(quant)+' consoantes!',
    mtInformation, [mbOK], 0);
end;

procedure TFExercicio7.Button1Click(Sender: TObject);
begin
    if (memo1.Lines.Count = -1) then
        ShowMessage('O memorando está vazio!')
    else
        memo1.SubstituirCaracter();
end;

procedure TFExercicio7.Button2Click(Sender: TObject);
begin
    if (memo1.Lines.Count = -1) then
        ShowMessage('O memorando está vazio!')
    else
        memo1.InverteLinhas();
end;

procedure TFExercicio7.Button3Click(Sender: TObject);
begin
    if (memo1.Lines.Count = -1) then
        ShowMessage('O memorando está vazio!')
    else
        memo1.CaracterMaiusculo();
end;

procedure TFExercicio7.FormShow(Sender: TObject);
begin
    memo1 := TMemorando.Create(FExercicio7);
    memo1.Parent := FExercicio7;
    memo1.Left := 20;
    memo1.Top  := 20;
    memo1.Width := 275;
    memo1.Height := 120;
end;

end.
