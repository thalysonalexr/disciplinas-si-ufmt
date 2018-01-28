unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exerccios1: TMenuItem;
    Exercicio01: TMenuItem;
    Exercicio02: TMenuItem;
    Exercicio03: TMenuItem;
    Exercicio04: TMenuItem;
    Exercicio05: TMenuItem;
    Exercicio06: TMenuItem;
    Exercicio07: TMenuItem;
    procedure Exercicio01Click(Sender: TObject);
    procedure Exercicio03Click(Sender: TObject);
    procedure Exercicio04Click(Sender: TObject);
    procedure Exercicio05Click(Sender: TObject);
    procedure Exercicio06Click(Sender: TObject);
    procedure Exercicio07Click(Sender: TObject);
    procedure Exercicio02Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UExercicio1, UExercicio3, UExercicio4, UExercicio5, UExercicio6,
  UExercicio7, UExercicio2;

{$R *.dfm}

procedure TFPrincipal.Exercicio01Click(Sender: TObject);
begin
    try
        FExercicio1 := TFExercicio1.Create(Application);
        FExercicio1.ShowModal;
    finally
        FExercicio1.Free;
    end;
end;

procedure TFPrincipal.Exercicio02Click(Sender: TObject);
begin
    try
        FExercicio2 := TFExercicio2.Create(Application);
        FExercicio2.ShowModal;
    finally
        FExercicio2.Free;
    end;
end;

procedure TFPrincipal.Exercicio03Click(Sender: TObject);
begin
    try
        FExercicio3 := TFExercicio3.Create(Application);
        FExercicio3.ShowModal;
    finally
        FExercicio3.Free;
    end;
end;

procedure TFPrincipal.Exercicio04Click(Sender: TObject);
begin
    try
        FExercicio4 := TFExercicio4.Create(Application);
        FExercicio4.ShowModal;
    finally
        FExercicio4.Free;
    end;
end;

procedure TFPrincipal.Exercicio05Click(Sender: TObject);
begin
    try
        FExercicio5 := TFExercicio5.Create(Application);
        FExercicio5.ShowModal;
    finally
        FExercicio5.Free;
    end;
end;

procedure TFPrincipal.Exercicio06Click(Sender: TObject);
begin
    try
        FExercicio6 := TFExercicio6.Create(Application);
        FExercicio6.ShowModal;
    finally
        FExercicio6.Free;
    end;
end;

procedure TFPrincipal.Exercicio07Click(Sender: TObject);
begin
    try
        FExercicio7 := TFExercicio7.Create(Application);
        FExercicio7.ShowModal;
    finally
        FExercicio7.Free;
    end;
end;

end.
