unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Exereccios1: TMenuItem;
    Exerccio11: TMenuItem;
    Exerccio21: TMenuItem;
    Eerccio31: TMenuItem;
    Exerccio41: TMenuItem;
    procedure Exerccio11Click(Sender: TObject);
    procedure Exerccio21Click(Sender: TObject);
    procedure Eerccio31Click(Sender: TObject);
    procedure Exerccio41Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UExe1, UExe2, UExe3, UExe4;

{$R *.dfm}

procedure TFPrincipal.Eerccio31Click(Sender: TObject);
begin
  try
    FExe3:=TFExe3.create(Application);
    FExe3.showmodal;
  finally
    FExe3.free;
  end;
end;

procedure TFPrincipal.Exerccio11Click(Sender: TObject);
begin
  try
    FExe1:=TFExe1.create(Application);
    FExe1.showmodal;
  finally
    FExe1.free;
  end;
end;

procedure TFPrincipal.Exerccio21Click(Sender: TObject);
begin
  try
    FExe2:=TFExe2.create(Application);
    FExe2.showmodal;
  finally
    FExe2.free;
  end;
end;

procedure TFPrincipal.Exerccio41Click(Sender: TObject);
begin
  try
    FExe4:=TFExe4.create(Application);
    FExe4.showmodal;
  finally
    FExe4.free;
  end;
end;

end.
