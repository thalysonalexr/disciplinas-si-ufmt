unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exercicios: TMenuItem;
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

{$R *.dfm}

uses UExercicio1, UExercicio2, UExercicio3;

procedure TFPrincipal.Exercicio1Click(Sender: TObject);
begin
    try
        FExercicio1 := TFExercicio1.Create(Application);
        FExercicio1.ShowModal;
    finally
        FExercicio1.Free;
    end;
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

procedure TFPrincipal.Exercicio3Click(Sender: TObject);
begin
    try
        FExercicio3 := TFExercicio3.Create(Application);
        FExercicio3.ShowModal;
    finally
        FExercicio3.Free;
    end;
end;

end.
