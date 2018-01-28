unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exerccio011: TMenuItem;
    Exercicio1: TMenuItem;
    Exercicio2: TMenuItem;
    btnSair: TButton;
    procedure Exercicio1Click(Sender: TObject);
    procedure Exercicio2Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
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

procedure TFPrincipal.btnSairClick(Sender: TObject);
begin
    Close;
end;

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

end.
