unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    ExercciosArquivos1: TMenuItem;
    Banco1: TMenuItem;
    Caracteres1: TMenuItem;
    procedure Banco1Click(Sender: TObject);
    procedure Caracteres1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UBanco;

{$R *.dfm}

procedure TFPrincipal.Banco1Click(Sender: TObject);
begin
try
  FBanco:=TFBanco.create(application);
  FBanco.ShowModal;
finally
  FBanco.Free;
end;
end;

procedure TFPrincipal.Caracteres1Click(Sender: TObject);
begin
try
  FBanco:=TFBanco.create(application);
  FBanco.ShowModal;
finally
  FBanco.Free;
end;
end;

end.
