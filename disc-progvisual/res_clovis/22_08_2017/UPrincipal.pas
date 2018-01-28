unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus;

type
  TFPrincipal = class(TForm)
    BDCidades: TADOConnection;
    MainMenu1: TMainMenu;
    abelas1: TMenuItem;
    Paises1: TMenuItem;
    Estados1: TMenuItem;
    procedure Estados1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UEstados;

{$R *.dfm}

procedure TFPrincipal.Estados1Click(Sender: TObject);
begin
  try
    FEstados:=TFEstados.Create(application);
    FEstados.ShowModal;
  finally
    FEstados.Free;
  end;
end;

end.
