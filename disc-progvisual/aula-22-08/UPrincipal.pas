unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus;

type
  TFPrincipal = class(TForm)
    ConnDBCidades: TADOConnection;
    MainMenu1: TMainMenu;
    abelas1: TMenuItem;
    Cadastros: TMenuItem;
    Consultas: TMenuItem;
    Cidades1: TMenuItem;
    Estados1: TMenuItem;
    Paises1: TMenuItem;
    Cidades2: TMenuItem;
    Estados2: TMenuItem;
    Paises2: TMenuItem;
    procedure Estados1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UEstados, UCidades;

{$R *.dfm}

procedure TFPrincipal.Cidades1Click(Sender: TObject);
begin
  try
    FCadCidades := TFCadCidades.Create(Application);
    FCadCidades.ShowModal;
  finally
    FCadCidades.Free;
  end;
end;

procedure TFPrincipal.Estados1Click(Sender: TObject);
begin
  try
    FCadEstados := TFCadEstados.Create(Application);
    FCadEstados.ShowModal;
  finally
    FCadEstados.Free;
  end;
end;

end.
