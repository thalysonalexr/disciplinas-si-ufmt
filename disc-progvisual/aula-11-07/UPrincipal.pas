unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Exerccios1: TMenuItem;
    Exerccio11: TMenuItem;
    Exerccio21: TMenuItem;
    Exerccio31: TMenuItem;
    Exerccio41: TMenuItem;
    Exerccio51: TMenuItem;
    Exerccio61: TMenuItem;
    Exerccio71: TMenuItem;
    procedure Exerccio11Click(Sender: TObject);
    procedure Exerccio21Click(Sender: TObject);
    procedure Exerccio31Click(Sender: TObject);
    procedure Exerccio41Click(Sender: TObject);
    procedure Exerccio51Click(Sender: TObject);
    procedure Exerccio61Click(Sender: TObject);
    procedure Exerccio71Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UExe1, UExe2, UExe3, UExe4, UExe5, UExe6, UExe7;

{$R *.dfm}

procedure TForm1.Exerccio11Click(Sender: TObject);
begin
try
  FExe1:= TFExe1.create(application);
  FExe1.showmodal;
finally
  FExe1.free;
end;
end;

procedure TForm1.Exerccio21Click(Sender: TObject);
begin
try
  FExe2:= TFExe2.create(application);
  FExe2.showmodal;
finally
  FExe2.free;
end;
end;

procedure TForm1.Exerccio31Click(Sender: TObject);
begin
try
  FExe3:= TFExe3.create(application);
  FExe3.showmodal;
finally
  FExe3.free;
end;
end;

procedure TForm1.Exerccio41Click(Sender: TObject);
begin
try
  FExe4:= TFExe4.create(application);
  FExe4.showmodal;
finally
  FExe4.free;
end;
end;

procedure TForm1.Exerccio51Click(Sender: TObject);
begin
try
  FExe5:= TFExe5.create(application);
  FExe5.showmodal;
finally
  FExe5.free;
end;
end;

procedure TForm1.Exerccio61Click(Sender: TObject);
begin
try
  FExe6:= TFExe6.create(application);
  FExe6.showmodal;
finally
  FExe6.free;
end;
end;

procedure TForm1.Exerccio71Click(Sender: TObject);
begin
try
  FExe7:= TFExe7.create(application);
  FExe7.showmodal;
finally
  FExe7.free;
end;
end;

end.
