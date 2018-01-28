unit UExe4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,StdCtrls,ExtCtrls;

type
  TFExe4 = class(TForm)
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

  TCalculadora=class(TRadioGroup)
    public
      valor1,valor2:integer;
      procedure LerValores;
      procedure Executar;
  end;

var
  FExe4: TFExe4;
  calc:TCalculadora;

implementation

{$R *.dfm}

procedure TCalculadora.LerValores;
begin
  valor1:=strtoint(inputbox('Valores','Valor1',''));
  valor2:=strtoint(inputbox('Valores','Valor2',''));
end;

procedure TCalculadora.Executar;
begin
  case (itemindex) of
    0:messagedlg('Soma='+inttostr(valor1+valor2),mtinformation,[mbok],0);
    1:messagedlg('Subtração='+inttostr(valor1-valor2),mtinformation,[mbok],0);
    2:messagedlg('Multiplicação='+inttostr(valor1*valor2),mtinformation,[mbok],0);
    3:messagedlg('Divisão='+floattostr(valor1/valor2),mtinformation,[mbok],0);
  end;
end;

procedure TFExe4.Button1Click(Sender: TObject);
begin
  calc.LerValores;
end;

procedure TFExe4.Button2Click(Sender: TObject);
begin
  calc.Executar;
end;

procedure TFExe4.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TFExe4.FormShow(Sender: TObject);
begin
  calc:=TCalculadora.Create(FExe4);
  calc.parent:=FExe4;
  calc.Items.add('Somar');
  calc.Items.add('Subtrair');
  calc.Items.add('Multiplicar');
  calc.Items.add('Dividir');
  calc.Caption:=' Operações ';
end;

end.
