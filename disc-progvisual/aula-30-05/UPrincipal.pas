unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exercicios1: TMenuItem;
    Exercicio11: TMenuItem;
    Exercicio21: TMenuItem;
    Exerccio31: TMenuItem;
    procedure Exercicio11Click(Sender: TObject);
    procedure Exercicio21Click(Sender: TObject);
    procedure Exerccio31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UExe1, UExe2, UExe3;

{$R *.dfm}

procedure TFPrincipal.Exercicio21Click(Sender: TObject);
begin
  FExe2.show;
end;

procedure TFPrincipal.Exerccio31Click(Sender: TObject);
begin
  FExe3.show;
end;

procedure TFPrincipal.Exercicio11Click(Sender: TObject);
begin
  FExe1.show;
end;

end.
