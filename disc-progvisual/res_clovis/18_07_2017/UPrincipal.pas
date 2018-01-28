unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exerccios1: TMenuItem;
    Exerccio51: TMenuItem;
    Exerccio21: TMenuItem;
    procedure Exerccio51Click(Sender: TObject);
    procedure Exerccio21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UExe5, UExe2;

{$R *.dfm}

procedure TFPrincipal.Exerccio21Click(Sender: TObject);
begin
  try
    FExe2:=TFExe2.Create(Application);
    FExe2.ShowModal;
  finally
    FExe2.Free;
  end;
end;

procedure TFPrincipal.Exerccio51Click(Sender: TObject);
begin
  try
    FExe5:=TFExe5.Create(Application);
    FExe5.ShowModal;
  finally
    FExe5.Free;
  end;
end;

end.
