unit UExercicio4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFExercicio4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TCalculadora = class(TRadioGroup)
  public
    valor1, valor2: Integer;
    procedure LerValores;
    procedure Executar;
  end;

var
  FExercicio4: TFExercicio4;
  calc: TCalculadora;

implementation

{$R *.dfm}

procedure TFExercicio4.Button1Click(Sender: TObject);
begin
  calc.LerValores;
end;

procedure TFExercicio4.Button2Click(Sender: TObject);
begin
  calc.Executar;
end;

procedure TFExercicio4.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TFExercicio4.FormShow(Sender: TObject);
begin
  calc := TCalculadora.Create(FExercicio4);
  calc.Parent := FExercicio4;
  
  calc.Caption := 'Operações';
  calc.Items.Add('Soma');
  calc.Items.Add('Subtração');
  calc.Items.Add('Multiplicação');
  calc.Items.Add('Divisão');
end;

procedure TCalculadora.LerValores;
var aux: String;
begin
  aux := InputBox('Valores', 'Valor 01', '');
  if (aux <> '') then
    valor1 := StrToInt(aux)
  else
    Exit;

  aux := InputBox('Valores', 'Valor 02', '');
  if (aux <> '') then
    valor2 := StrToInt(aux)
  else
    Exit;
end;

procedure TCalculadora.Executar;
begin
  case (ItemIndex) of
    0: MessageDlg('Soma = '+IntToStr(valor1+valor2), mtInformation, [mbOK], 0);
    1: MessageDlg('Subtração = '+IntToStr(valor1-valor2), mtInformation, [mbOK], 0);
    2: MessageDlg('Multiplicação = '+IntToStr(valor1*valor2), mtInformation, [mbOK], 0);
    3:
    if (valor2 = 0) then
      ShowMessage('Não existe divisão por ZERO!')
    else
      MessageDlg('Divisão = '+FloatToStr(valor1/valor2), mtInformation, [mbOK], 0);
  end;
end;

end.
