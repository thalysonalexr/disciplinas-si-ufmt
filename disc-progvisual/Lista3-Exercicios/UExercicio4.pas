unit UExercicio4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFExercicio4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Calculadora = class(TRadioGroup)
  public
    valor1, valor2: TEdit;
    procedure Executar(window: TForm);
    procedure Calcular;
  end;

var
  FExercicio4: TFExercicio4;
  calc: Calculadora;

implementation

{$R *.dfm}

procedure Calculadora.Executar(window: TForm);
begin
    valor1 := TEdit.Create(window);
    valor2 := TEdit.Create(window);
    valor1.Parent := window;
    valor2.Parent := window;
    valor1.Top := 20;
    valor2.Top := 50;
    valor1.Left := 250;
    valor2.Left := 250;

    Items.Add('Soma');
    Items.Add('Multiplicação');
    SelectFirst;
    Left := 20;
    Top := 20;

end;

procedure Calculadora.Calcular;
var res, v1, v2: Integer;
begin
    if (not Assigned(calc)) then begin
        ShowMessage('Execute primeiro!');
        Exit;
    end;
    if ((valor1.Text = '') or (valor2.Text = '')) then
    begin
        ShowMessage('Preencha os EDITS!');
        Exit;
    end;
    res := 0;
    v1 := StrToInt(valor1.Text);
    v2 := StrToInt(valor2.Text);

    case (ItemIndex) of
        0: res := v1 + v2;
        1: res := v1 * v2;
    end;
    ShowMessage(IntToStr(res));
end;

procedure TFExercicio4.Button1Click(Sender: TObject);
begin
    calc := Calculadora.Create(FExercicio4);
    calc.Parent := FExercicio4;
    calc.Executar(FExercicio4);
end;

procedure TFExercicio4.Button2Click(Sender: TObject);
begin
    calc.Calcular;
end;

end.
