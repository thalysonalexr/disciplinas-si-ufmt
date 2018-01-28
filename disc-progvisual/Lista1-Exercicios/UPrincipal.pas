unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Exerccio011: TMenuItem;
    Exerccio012: TMenuItem;
    Exerccio021: TMenuItem;
    Exerccio022: TMenuItem;
    Exerccio041: TMenuItem;
    Exerccio051: TMenuItem;
    procedure Exerccio012Click(Sender: TObject);
    procedure Exerccio021Click(Sender: TObject);
    procedure Exerccio022Click(Sender: TObject);
    procedure Exerccio041Click(Sender: TObject);
    procedure Exerccio051Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UExercicio1, UExercicio2, UExercicio3, UExercicio4, UExercicio5;

{$R *.dfm}

procedure TForm1.Exerccio012Click(Sender: TObject);
begin
     FExercicio01.Show;
end;

procedure TForm1.Exerccio021Click(Sender: TObject);
begin
     FExercicio02.Show;
end;

procedure TForm1.Exerccio022Click(Sender: TObject);
begin
     FExercicio03.Show;
end;

procedure TForm1.Exerccio041Click(Sender: TObject);
begin
     FExercicio04.Show;
end;

procedure TForm1.Exerccio051Click(Sender: TObject);
begin
     FExercicio05.Show;
end;

end.
