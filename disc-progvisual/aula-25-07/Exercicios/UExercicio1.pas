unit UExercicio1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFExercicio1 = class(TForm)
    RadioOperacoes: TRadioGroup;
    CampoValor: TEdit;
    Label1: TLabel;
    btnExecutar: TButton;
    btnSair: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TBanco = class
  public
    Saldo: Real;
    procedure Depositar(valor: Real);
    procedure Retirar(valor: Real);
    function ValorInvalido(var arquivo: TextFile; valor1, valor2: Real; msg: String): Boolean;
    function SaldoAtual(): Real;
  private
    NomeLogico: TextFile;
    Arquivo: String;
  end;

var
  FExercicio1: TFExercicio1;
  Banco: TBanco;

implementation

{$R *.dfm}

procedure TBanco.Depositar(valor: Real);
var texto: String;
begin
  AssignFile(NomeLogico, arquivo);

  if (FileExists(arquivo)) then begin
    Reset(NomeLogico);
    Readln(NomeLogico, texto);
    if (ValorInvalido(NomeLogico, valor, 1, 'Valor inválido!')) then
      Exit;
    Saldo := StrToFloat(texto) + valor;
  end else
    Saldo := valor;

  Rewrite(NomeLogico);
  Writeln(NomeLogico, FloatToStr(Saldo));
  CloseFile(NomeLogico);
end;

procedure TBanco.Retirar(valor: Real);
var texto: String;
begin
  AssignFile(NomeLogico, arquivo); // Atribuir Nome Lógico ao Arquivo

  if (not FileExists(arquivo)) then
    ShowMessage('Deposite primeiro!')
  else begin
    Reset(NomeLogico);
    Readln(NomeLogico, texto);

    if (ValorInvalido(NomeLogico, StrToFloat(texto), valor, 'Saldo insuficiente!')) then
        Exit
    else if (ValorInvalido(NomeLogico, valor, 1, 'Valor inválido!')) then
        Exit;

    Saldo := StrToFloat(texto) - valor;
    Rewrite(NomeLogico);
    Writeln(NomeLogico, FloatToStr(Saldo));
    CloseFile(NomeLogico);
  end;

end;

function TBanco.ValorInvalido(var arquivo: TextFile; valor1, valor2: Real; msg: String): Boolean;
begin
    if (valor1 < valor2) then begin
        ShowMessage(msg);
        CloseFile(arquivo);
        ValorInvalido := True;
    end else
        ValorInvalido := False;
end;

function TBanco.SaldoAtual(): Real;
var texto: String;
begin
  AssignFile(NomeLogico, Arquivo);
  if (not FileExists(Arquivo)) then begin
    ShowMessage('Deposite primeiro!');
    SaldoAtual := -1;
  end else begin
    Reset(NomeLogico);
    Readln(NomeLogico, texto);
    Saldo := StrToFloat(texto);
    CloseFile(NomeLogico);
    SaldoAtual := Saldo;
  end;
end;

procedure TFExercicio1.btnExecutarClick(Sender: TObject);
var valor: Real;
begin
  if (RadioOperacoes.ItemIndex = 2) then begin
    valor := banco.SaldoAtual();
    if (valor <> -1) then
        MessageDlg('Saldo atual: '+FloatToStr(valor),mtInformation,[mbOk],0);
    Exit;
  end;
  
  if (CampoValor.Text = '') then begin
    ShowMessage('Digite um valor!');
    Exit;
  end;

  valor := StrToFloat(CampoValor.Text);

  case RadioOperacoes.ItemIndex of
    0: banco.Depositar(valor);
    1: banco.Retirar(valor);
  end;
end;

procedure TFExercicio1.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFExercicio1.FormShow(Sender: TObject);
begin
  banco := TBanco.Create();
  banco.Arquivo := 'C:\Users\thamo\Dropbox\SI\4° SEMESTRE\LINGUAGEM DE PROGRAMAÇÃO VISUAL\aula-25-07\Exercicios\saldo.txt';
  RadioOperacoes.ItemIndex := 0;
end;

end.
