unit UExe2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,StdCtrls;

type
  TFExe2 = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TTexto=class(TEdit)
    public
      constructor create(obj:TComponent);
  end;

var
  FExe2: TFExe2;
  t:TTexto;

implementation

{$R *.dfm}

constructor TTexto.create(obj:TComponent);
begin
  inherited create(obj);

  color:=clyellow;
end;

procedure TFExe2.FormShow(Sender: TObject);
begin
  t:=TTexto.create(FExe2);
  t.Parent:=FExe2;
end;

end.
