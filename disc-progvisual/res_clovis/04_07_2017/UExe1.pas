unit UExe1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFExe1 = class(TForm)
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

  TTexto = class(TEdit)
    public
      procedure Apresentar;
  end;

var
  FExe1: TFExe1;
  teste,teste2:TTexto;

implementation

{$R *.dfm}

procedure TFExe1.Button1Click(Sender: TObject);
begin
  teste.Apresentar;
end;

procedure TFExe1.Button2Click(Sender: TObject);
begin
  teste2.Apresentar;
end;

procedure TFExe1.FormShow(Sender: TObject);
begin
  teste:=TTexto.Create(FExe1);
  teste.Parent:=FExe1;
  teste.Text:='SI - ROO';

  teste2:=TTexto.Create(FExe1);
  teste2.Parent:=FExe1;
  teste2.Top:=100;
  teste2.Text:='UFMT';
end;

procedure TTexto.Apresentar;
begin
  text:=text+' Total:'+inttostr(length(text));
end;

end.
