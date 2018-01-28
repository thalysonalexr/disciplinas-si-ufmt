unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Questes1: TMenuItem;
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

uses UQuestao1, UQuestao2;

{$R *.dfm}

procedure TFPrincipal.Questo11Click(Sender: TObject);
begin
  try
    FQuestao1:=TFQuestao1.create(application);
    FQuestao1.showmodal;
  finally
    FQuestao1.free;
  end;
end;

procedure TFPrincipal.Questo21Click(Sender: TObject);
begin
  try
    FQuestao2:=TFQuestao2.create(application);
    FQuestao2.showmodal;
  finally
    FQuestao2.free;
  end;
end;

end.
