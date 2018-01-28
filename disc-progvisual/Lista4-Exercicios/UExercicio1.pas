unit UExercicio1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFExercicio1 = class(TForm)
    btnFormatar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnFormatarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TFormatacao = class(TMemo)
  public
    NomeArquivo: String;
    constructor Create(C: TComponent);
    procedure Formatar();
  end;

var
  FExercicio1: TFExercicio1;
  texto: TFormatacao;

implementation

{$R *.dfm}

constructor TFormatacao.Create(C: TComponent);
begin
    inherited Create(C);
    Width := 250;
    Height := 150;
    Top := 20;
    Left := 20;
end;

procedure TFormatacao.Formatar;
var LIMITE, meioLinha, meioString, inicio, i, j: Integer;
    aux, spc: String;
    log: TextFile;
begin
    LIMITE := 80;
    meioLinha := LIMITE div 2;
    AssignFile(log, NomeArquivo);
    Rewrite(log);

    for i := 0 to Lines.Count -1 do begin
        aux := Lines[i];
        aux := Trim(aux);
        meioString := Length(aux);
        inicio := meioLinha - meioString;
        spc := '';
        for j := 1 to inicio do
            spc := spc + ' ';
        Lines[i] := (spc + aux);
        Writeln(log, (spc + aux));
    end;
    CloseFile(log);
end;

procedure TFExercicio1.btnFormatarClick(Sender: TObject);
begin
    texto.Formatar();
end;

procedure TFExercicio1.FormShow(Sender: TObject);
begin
    texto := TFormatacao.Create(FExercicio1);
    texto.Parent := FExercicio1;
    texto.NomeArquivo := 'C:/arquivos_delphi/texto_centralizado.doc';
end;

end.
