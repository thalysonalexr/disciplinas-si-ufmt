unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exerccios1: TMenuItem;
    Exerccio1Grids1: TMenuItem;
    Exeerccio2TTexto1: TMenuItem;
    Exeerccio3Grid1: TMenuItem;
    procedure Exerccio1Grids1Click(Sender: TObject);
    procedure Exeerccio2TTexto1Click(Sender: TObject);
    procedure Exeerccio3Grid1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UExe1, UExe2, UExe3;

{$R *.dfm}

procedure TFPrincipal.Exeerccio2TTexto1Click(Sender: TObject);
begin
try
  FExe2:=TFEXe2.create(application);
  FExe2.showmodal;
finally
  FExe2.free;
end;
end;

procedure TFPrincipal.Exeerccio3Grid1Click(Sender: TObject);
begin
try
  FExe3:=TFEXe3.create(application);
  FExe3.showmodal;
finally
  FExe3.free;
end;
end;

procedure TFPrincipal.Exerccio1Grids1Click(Sender: TObject);
begin
try
  FExe1:=TFEXe1.create(application);
  FExe1.showmodal;
finally
  FExe1.free;
end;
end;

end.
