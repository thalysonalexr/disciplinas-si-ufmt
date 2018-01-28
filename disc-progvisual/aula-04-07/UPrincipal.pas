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
    Exerccio021: TMenuItem;
    Exerccio031: TMenuItem;
    Exerccio041: TMenuItem;
    procedure Exerccio011Click(Sender: TObject);
    procedure Exerccio021Click(Sender: TObject);
    procedure Exerccio031Click(Sender: TObject);
    procedure Exerccio041Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UExercicio1, UExercicio2, UExercicio3, UExercicio4;

{$R *.dfm}

procedure TFPrincipal.Exerccio011Click(Sender: TObject);
begin
  try
    FExercicio1 := TFExercicio1.Create(Application);
    FExercicio1.ShowModal;
  finally
    FExercicio1.Free;
  end;
end;

procedure TFPrincipal.Exerccio021Click(Sender: TObject);
begin
  try
    FExercicio2 := TFExercicio2.Create(Application);
    FExercicio2.ShowModal;
  finally
    FExercicio2.Free;
  end;
end;

procedure TFPrincipal.Exerccio031Click(Sender: TObject);
begin
  try
    FExercicio3 := TFExercicio3.Create(Application);
    FExercicio3.ShowModal;
  finally
    FExercicio3.Free;
  end;
end;

procedure TFPrincipal.Exerccio041Click(Sender: TObject);
begin
  try
    FExercicio4 := TFExercicio4.Create(Application);
    FExercicio4.ShowModal;
  finally
    FExercicio4.Free;
  end;
end;

end.
