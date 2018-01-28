unit u_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Prova21: TMenuItem;
    Questo11: TMenuItem;
    Questo21: TMenuItem;
    procedure Questo11Click(Sender: TObject);
    procedure Questo21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses u_exe1, u_exe2;

{$R *.dfm}

procedure TFPrincipal.Questo11Click(Sender: TObject);
begin
  try
    FExe1:= TFExe1.create(Application);
    FExe1.showmodal;
  finally
    FExe1.free;
  end;
end;

procedure TFPrincipal.Questo21Click(Sender: TObject);
begin
  try
    FExe2:= TFExe2.create(Application);
    FExe2.showmodal;
  finally
    FExe2.free;
  end;
end;

end.
