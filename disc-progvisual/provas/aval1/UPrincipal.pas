unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Resolues1: TMenuItem;
    Resoluo01: TMenuItem;
    Resoluo02: TMenuItem;
    procedure Resoluo01Click(Sender: TObject);
    procedure Resoluo02Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UResolucao1, UResolucao2;

{$R *.dfm}

procedure TFPrincipal.Resoluo01Click(Sender: TObject);
begin
  FResolucao1.Show;
end;

procedure TFPrincipal.Resoluo02Click(Sender: TObject);
begin
  FResolucao2.Show;
end;

end.
