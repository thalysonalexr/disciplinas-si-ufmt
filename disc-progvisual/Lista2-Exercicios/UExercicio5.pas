unit UExercicio5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TFExercicio5 = class(TForm)
    GroupBox1: TGroupBox;
    CampoTexto: TEdit;
    CampoPesquisa: TEdit;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio5: TFExercicio5;

implementation

{$R *.dfm}

procedure TFExercicio5.Button1Click(Sender: TObject);
var i, total: Integer;
begin
    total := 0;
    if (Length(CampoPesquisa.Text) = 0) then
        MessageDlg('Preencha o campo de pesquisa!', mtInformation, [mbOK], 0)
    else
    if (Length(CampoPesquisa.Text) > 1) then
        MessageDlg('Digite apenas um caractere!', mtWarning, [mbOK], 0)
    else
    begin
        for i := 1 to Length(CampoTexto.Text) do
            if (LowerCase(CampoPesquisa.Text) = LowerCase(CampoTexto.Text)[i]) then
                total := total + 1;
        MessageDlg('Total de caracteres: ' + IntToStr(total), mtInformation, [mbOK], 0);
    end;
end;

procedure TFExercicio5.SpeedButton1Click(Sender: TObject);
begin
    Close;
end;

end.
