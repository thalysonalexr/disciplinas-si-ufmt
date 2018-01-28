unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Questes1: TMenuItem;
    Questao1: TMenuItem;
    Questao2: TMenuItem;
    Button1: TButton;
    procedure Questao1Click(Sender: TObject);
    procedure Questao2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFPrincipal.Questao1Click(Sender: TObject);
begin
  try
    FQuestao1 := TFQuestao1.Create(Application);
    FQuestao1.ShowModal;
  finally
    FQuestao1.Free;
  end;
end;

procedure TFPrincipal.Questao2Click(Sender: TObject);
begin
  try
    FQuestao2 := TFQuestao2.Create(Application);
    FQuestao2.ShowModal;
  finally
    FQuestao2.Free;
  end;
end;

end.
