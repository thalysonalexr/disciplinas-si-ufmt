unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    CampoTexto1: TEdit;
    CampoTexto2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnSomar: TButton;
    btnSair: TButton;
    GroupBox1: TGroupBox;
    CampoResultado: TEdit;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    btnLimpar: TButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSomarClick(Sender: TObject);
var aux: integer;
begin
     if ((Length(CampoTexto1.Text) > 0) and (Length(CampoTexto2.Text) > 0)) then begin
        aux := StrToInt(CampoTexto1.Text) + StrToInt(CampoTexto2.Text);
        CampoResultado.Text := IntToStr(aux);
     end;
end;

procedure TForm1.btnSubtrairClick(Sender: TObject);
var aux: integer;
begin
     if ((Length(CampoTexto1.Text) > 0) and (Length(CampoTexto2.Text) > 0)) then begin
        aux := StrToInt(CampoTexto1.Text) - StrToInt(CampoTexto2.Text);
        CampoResultado.Text := IntToStr(aux);
     end;
end;

procedure TForm1.btnMultiplicarClick(Sender: TObject);
var aux: integer;
begin
     if ((Length(CampoTexto1.Text) > 0) and (Length(CampoTexto2.Text) > 0)) then begin
        aux := StrToInt(CampoTexto1.Text) * StrToInt(CampoTexto2.Text);
        CampoResultado.Text := IntToStr(aux);
     end;
end;

procedure TForm1.btnDividirClick(Sender: TObject);
var aux: real;
begin
     if ((Length(CampoTexto1.Text) > 0) and (Length(CampoTexto2.Text) > 0)) then begin
        if (strtofloat(CampoTexto2.Text) <> 0) then begin
           aux := strtofloat(CampoTexto1.Text) / strtofloat(CampoTexto2.Text);
           CampoResultado.Text := floattostr(aux);
        end
        else
            CampoResultado.Text := 'Impossivel divisão por zero!';
     end;
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
     CampoTexto1.Clear;
     CampoTexto2.Clear;
     CampoResultado.Clear;
end;

procedure TForm1.btnSairClick(Sender: TObject);
begin
     close;
end;

end.
