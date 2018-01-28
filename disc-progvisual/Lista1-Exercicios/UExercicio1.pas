unit UExercicio1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TFExercicio01 = class(TForm)
    GroupBox1: TGroupBox;
    CampoValor1: TEdit;
    GroupBox2: TGroupBox;
    CampoResultado1: TEdit;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    CampoValor2: TEdit;
    GroupBox4: TGroupBox;
    CampoResultado2: TEdit;
    CampoValor3: TEdit;
    Label3: TLabel;
    btnCalcular1: TButton;
    btnCalcular2: TButton;
    btnLimpar1: TButton;
    btnLimpar2: TButton;
    spdBtnSair: TSpeedButton;
    procedure btnCalcular1Click(Sender: TObject);
    procedure btnCalcular2Click(Sender: TObject);
    procedure spdBtnSairClick(Sender: TObject);
    procedure btnLimpar1Click(Sender: TObject);
    procedure btnLimpar2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio01: TFExercicio01;
  function isNumber(value: string): Boolean;

implementation

{$R *.dfm}

function isNumber(value: string): Boolean;
var i: integer;
begin
  for i := 1 to Length(value) do
    if not(value[i] in ['0','1', '2', '3', '4', '5', '6', '7', '8', '9', '-']) then begin
      isNumber := False;
      Break;
    end else isNumber := True;
end;

procedure TFExercicio01.btnCalcular1Click(Sender: TObject);
var i, j, c, MAX: integer;
  resultado: real;
  parar: Boolean;

begin
    if (CampoValor1.Text = '') then begin
        MessageDlg('Campos vazios!', mtInformation, [mbOK], 0);
        Exit;
    end
    else if not isNumber(CampoValor1.Text) then begin
        MessageDlg('O valor preenchido deve ser um número!', mtWarning, [mbOk], 0);
        Exit;
    end
    else if (StrToInt(CampoValor1.Text) < 0) then begin
        MessageDlg('O valor preenchido deve ser >= 0!', mtWarning, [mbOk], 0);
        Exit;
    end;

    resultado := 0;
    parar := False;
    MAX := StrToInt(CampoValor1.Text);
    c := 0;

    repeat begin
        for j := 1 to 3 do begin
            if (c  = MAX) then begin
                parar := True;
                Break;
            end;
            resultado := resultado + j / 2;
            c := c + 1;
        end;

        for j := 3 downto 1 do begin
            if (c = MAX) then begin
                parar := True;
                Break;
            end;
            resultado := resultado + j / 2;
            c := c + 1;
        end;
    end;
    until parar = True;
    CampoResultado1.Text := FloatToStr(resultado);
end;

procedure TFExercicio01.btnCalcular2Click(Sender: TObject);
var i, v, n, c1, c2: integer;
    resultado: real;
begin
    if ((CampoValor2.Text = '') or (CampoValor3.Text = '')) then begin
        MessageDlg('Campos vazios!', mtInformation, [mbOK], 0);
        Exit;
    end
    else if (not isNumber(CampoValor2.Text) or not isNumber(CampoValor3.Text))  then begin
        MessageDlg('O valor preenchido deve ser um número inteiro!', mtWarning, [mbOk], 0);
        Exit;
    end;

    if (StrToInt(CampoValor3.Text) < 0) then begin
        MessageDlg('O valor preenchido para N dever ser >= 0!', mtWarning, [mbOk], 0);
        Exit;
    end;

    v := 2;
    n := 2;
    c1 := StrToInt(CampoValor2.Text);
    c2 := StrToInt(CampoValor3.Text);
    resultado := 0;

    resultado := resultado + c1 / c2;

    for i := 1 to c2 - 1 do begin
        if (c2 - n = 0) then
            resultado := resultado + (c1 + v) / 1
        else
            resultado := resultado + (c1 + v) / (c2 - n);

        v := v + 2;
        n := n + 1;
    end;

    CampoResultado2.Text := FloatToStr(resultado);
end;

procedure TFExercicio01.btnLimpar1Click(Sender: TObject);
begin
    CampoValor1.Clear;
    CampoResultado1.Clear;
    CampoValor1.SetFocus;
end;

procedure TFExercicio01.btnLimpar2Click(Sender: TObject);
begin
    CampoValor2.Clear;
    CampoValor3.Clear;
    CampoResultado2.Clear;
    CampoValor2.SetFocus;
end;

procedure TFExercicio01.FormShow(Sender: TObject);
begin
    CampoValor1.SetFocus;
end;

procedure TFExercicio01.spdBtnSairClick(Sender: TObject);
begin
    Close;
end;

end.
