unit UExe2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFExe2 = class(TForm)
    RadioOperacoes: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    CampoValor1: TEdit;
    CampoValor2: TEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    ListaResultado: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExe2: TFExe2;

implementation

{$R *.dfm}

procedure TFExe2.Button1Click(Sender: TObject);
var v1, v2, res: real;
    op : string;
begin

  if (RadioOperacoes.ItemIndex = -1) then
  begin
    ShowMessage('Selecione uma operação!')
  end
  else begin
    v1 := strToFloat(CampoValor1.Text);
    v2 := strToFloat(CampoValor2.Text);

    case RadioOperacoes.ItemIndex of
      0: begin res := v1 + v2; op := ' + '; end;
      1: begin res := v1 - v2; op := ' - '; end;
      2: begin res := v1 * v2; op := ' x '; end;
      3: begin if (v2 = 0) then begin
          ShowMessage('Erro divisão por zero!');
          exit;
        end;
        res := v1 / v2;
        op := ' / '
      end;
    end;
    // ShowMessage('O resultado é: ' + floatToStr(res));
    ListaResultado.Items.Add(CampoValor1.Text + op + CampoValor2.Text + ' = ' + floatToStr(res));
  end;
end;

procedure TFExe2.Button2Click(Sender: TObject);
begin
     Close;
end;

end.
