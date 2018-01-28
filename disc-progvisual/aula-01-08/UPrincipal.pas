unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exercicios1: TMenuItem;
    Exercicio1: TMenuItem;
    Exercicio2: TMenuItem;
    procedure Exercicio1Click(Sender: TObject);
    procedure Exercicio2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UExercicio1, UExercicio2;

{$R *.dfm}

procedure TFPrincipal.Exercicio1Click(Sender: TObject);
begin
  try
    FExercicio1 := TFExercicio1.Create(Application);
    FExercicio1.ShowModal;
  finally
    FExercicio1.Free;
  end
end;
procedure TFPrincipal.Exercicio2Click(Sender: TObject);
begin
  try
    FExercicio2 := TFExercicio2.Create(Application);
    FExercicio2.ShowModal;
  finally
    FExercicio2.Free;
  end;
end;

end.