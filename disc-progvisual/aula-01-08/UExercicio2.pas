unit UExercicio2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFExercicio2 = class(TForm)
    btnPesquisarCar: TButton;
    btnTotPalavras: TButton;
    btnPesquisarPalavras: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarCarClick(Sender: TObject);
    procedure btnTotPalavrasClick(Sender: TObject);
    procedure btnPesquisarPalavrasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TPesquisas = class(TMemo)
  public
    constructor Create(C: TComponent);
    procedure Pesquisa(caracter: Char); overload;
    function Pesquisa(): Integer; overload;
    procedure Pesquisa(palavra: String); overload;
  end;

var
  FExercicio2: TFExercicio2;
  pesquisas: TPesquisas;

implementation

{$R *.dfm}

// Construtor da classe TPesquisas
constructor TPesquisas.Create(C: TComponent);
begin
  inherited Create(C);
  Width := 200;
  Height := 200;
  Top := 20;
  Left := 20;
end;

// Quantidade de ocorrencias de um caracter em um memo
procedure TPesquisas.Pesquisa(caracter: Char);
var i, j, t: Integer;
  aux: String;
begin
  for i := 0 to Lines.Count - 1 do begin
    t := 0;
    aux := Lines[i];
    for j := 1 to Length(aux) do
      if (caracter = aux[j]) then
        Inc(t);
    Lines[i] := aux+' ['+inttostr(t)+']';
  end;
end;

// Contar quantidade de palavras em um memo
function TPesquisas.Pesquisa(): Integer;
var i, j, total: Integer;
    aux, temp: String;
begin
    total := 0;
    for i := 0 to Lines.Count - 1 do begin
        temp := '';
        aux := Lines[i];
        for j := 1 to Length(aux) do begin
            if (aux[j]<>' ') then
                temp := temp + aux[i]
            else begin
                if (temp<>'') then
                    Inc(total);
                temp := '';
            end;
        end;
    end;
    if (temp<>'') then
        Inc(total);
    Result := total;
end;

// Contar quantidade de ocorrencias de uma palavra em um memo
procedure TPesquisas.Pesquisa(palavra: string);
var i, j, t: Integer;
  aux: String;
begin
  t := 0;
  for i := 0 to Lines.Count - 1 do begin
    aux := Lines[i];
    for j := 1 to Length(aux) do
      if (Copy(aux, j, Length(palavra))=palavra) then
        Inc(t);
  end;
  Lines.Add(inttostr(t));
end;

procedure TFExercicio2.btnPesquisarCarClick(Sender: TObject);
begin
  pesquisas.Pesquisa(Edit1.Text[1]);
end;

procedure TFExercicio2.btnTotPalavrasClick(Sender: TObject);
begin
  ShowMessage('Total: '+InttoStr(pesquisas.Pesquisa));
end;

procedure TFExercicio2.btnPesquisarPalavrasClick(Sender: TObject);
begin
  pesquisas.Pesquisa(Edit1.Text);
end;

procedure TFExercicio2.FormShow(Sender: TObject);
begin
  pesquisas := TPesquisas.Create(FExercicio2);
  pesquisas.Parent := FExercicio2;
end;

end.
