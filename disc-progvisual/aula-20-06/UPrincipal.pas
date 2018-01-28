unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exercicio011: TMenuItem;
    Exercicio1: TMenuItem;
    Exercicio2: TMenuItem;
    Exercicio3: TMenuItem;
    procedure Exercicio1Click(Sender: TObject);
    procedure Exercicio2Click(Sender: TObject);
    procedure Exercicio3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UExercicio1, UExercicio2, UExercicio3;

{$R *.dfm}

procedure TFPrincipal.Exercicio1Click(Sender: TObject);
begin
    FExercicio1.Show;
end;

procedure TFPrincipal.Exercicio2Click(Sender: TObject);
begin
    FExercicio2.Show;
end;

procedure TFPrincipal.Exercicio3Click(Sender: TObject);
begin
    FExercicio3.Show;
end;

end.
