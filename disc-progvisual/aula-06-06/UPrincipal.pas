unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Aba1: TMenuItem;
    Aba1Item1: TMenuItem;
    Aba1Item2: TMenuItem;
    procedure Aba1Item1Click(Sender: TObject);
    procedure Aba1Item2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UExe1, UExe2;

{$R *.dfm}

procedure TFPrincipal.Aba1Item1Click(Sender: TObject);
begin
     FExe1.Show;
end;

procedure TFPrincipal.Aba1Item2Click(Sender: TObject);
begin
     FExe2.Show;
end;

end.
