unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exerccios1: TMenuItem;
    Exerccio011: TMenuItem;
    Exerccios021: TMenuItem;
    Exerccio031: TMenuItem;
    Exerccio041: TMenuItem;
    Exerccio051: TMenuItem;
    procedure Exerccio011Click(Sender: TObject);
    procedure Exerccios021Click(Sender: TObject);
    procedure Exerccio031Click(Sender: TObject);
    procedure Exerccio041Click(Sender: TObject);
    procedure Exerccio051Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UExercicio1, UExercicio2, UExercicio3, UExercicio4, UExercicio5;

{$R *.dfm}

procedure TFPrincipal.Exerccio011Click(Sender: TObject);
begin
    FExercicio1.Show;
end;

procedure TFPrincipal.Exerccios021Click(Sender: TObject);
begin
    FExercicio2.Show;
end;

procedure TFPrincipal.Exerccio031Click(Sender: TObject);
begin
    FExercicio3.Show;
end;

procedure TFPrincipal.Exerccio041Click(Sender: TObject);
begin
    FExercicio4.Show;
end;

procedure TFPrincipal.Exerccio051Click(Sender: TObject);
begin
    FExercicio5.Show;
end;

end.
