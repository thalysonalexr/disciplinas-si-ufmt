unit UExercicio1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFExercicio1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  { Definição da classe }
  TTexto = class(TEdit)
  public
    procedure Apresentar;

  end;

var
  { Definição do objeto }
  FExercicio1: TFExercicio1;
  teste, teste2: TTexto;

implementation

{$R *.dfm}

procedure TFExercicio1.Button1Click(Sender: TObject);
begin
  teste.Apresentar;
end;

procedure TFExercicio1.Button2Click(Sender: TObject);
begin
  teste2.Apresentar;
end;

procedure TFExercicio1.FormShow(Sender: TObject);
begin
  { Instanciamento do objeto }
  teste := TTexto.Create(FExercicio1);
  teste.Parent := FExercicio1;
  teste.Text := 'SI - ROO';

  teste2 := TTexto.Create(FExercicio1);
  teste2.Parent := FExercicio1;
  teste2.Top := 100;
  teste2.Text := 'UFMT';
end;

procedure TTexto.Apresentar;
begin
  Text := Text + ' Total: ' + IntToStr(Length(Text));
end;

end.
