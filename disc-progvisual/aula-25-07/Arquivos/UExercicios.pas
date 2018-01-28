unit UExercicios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btnCriarArquivo: TButton;
    btnLerArquivo: TButton;
    CampoTexto: TEdit;
    btnLerLista: TButton;
    ListBox1: TListBox;
    btnAcrescentar: TButton;
    CampoAcrescentar: TEdit;
    btnSomar: TButton;
    DialogoAbertura: TOpenDialog;
    procedure btnCriarArquivoClick(Sender: TObject);
    procedure btnLerArquivoClick(Sender: TObject);
    procedure btnLerListaClick(Sender: TObject);
    procedure btnAcrescentarClick(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  nomeLogico: TextFile; // (1) Nome lógico do arquivo

implementation

{$R *.dfm}

procedure TForm1.btnAcrescentarClick(Sender: TObject);
begin
  // (2) Associação do nome lógico com arquivo fisico
  AssignFile(nomeLogico, 'C:\Users\Administrador\Desktop\aula-25-07\Arquivos\dados.txt');
  // (3) Anexar mais dados ao arquivo
  Append(nomeLogico);
  // (4) Gravação de dados (entrada)
  Writeln(nomeLogico, CampoAcrescentar.Text);
  // (5) Fechamento do arquivo
  CloseFile(nomeLogico);
end;

procedure TForm1.btnCriarArquivoClick(Sender: TObject);
begin
  // (2) Associação do nome lógico com arquivo fisico
  AssignFile(nomeLogico, 'C:\Users\Administrador\Desktop\aula-25-07\Arquivos\dados.txt');
  // (3) Abertura / Criação do arquivo
  Rewrite(nomeLogico);
  // (4) Gravação de dados (entrada)
  Writeln(nomeLogico, 'SISTEMAS DE INFORMAÇÃO');
  // (5) Fechamento do arquivo
  CloseFile(nomeLogico);
end;

procedure TForm1.btnLerArquivoClick(Sender: TObject);
var texto: String;
begin
  // (2) Associação do nome lógico com arquivo fisico
  AssignFile(nomeLogico, 'C:\Users\Administrador\Desktop\aula-25-07\Arquivos\dados.txt');
  // (3) Leitura do arquivo
  Reset(nomeLogico);
  // (4) Leitura de dados (Arquivo)
  Readln(nomeLogico, texto);
  CampoTexto.Text := texto;
  // (5) Fechamento do arquivo
  CloseFile(nomeLogico);
end;

procedure TForm1.btnLerListaClick(Sender: TObject);
var
  texto: String;
begin
  listBox1.Clear;
  // (2) Associação do nome lógico com arquivo fisico
  AssignFile(nomeLogico, 'C:\Users\Administrador\Desktop\aula-25-07\Arquivos\dados.txt');
  // (3) Leitura do arquivo
  Reset(nomeLogico);
  // (4) Leitura de dados até o fim do Arquivo
  while not Eof(nomeLogico) do begin
    Readln(nomeLogico, texto);
    ListBox1.Items.Add(texto);
  end;
  // (5) Fechamento do arquivo
  CloseFile(nomeLogico);
end;

procedure TForm1.btnSomarClick(Sender: TObject);
var texto: String;
  total: Integer;
begin
  // (2) Associação do nome lógico com arquivo fisico
  if (DialogoAbertura.Execute()) then begin
    AssignFile(nomeLogico, DialogoAbertura.FileName);
    // (3) Leitura do arquivo
    Reset(nomeLogico);
    // (4) Leitura de dados até o fim do Arquivo
    total := 0;
    while not Eof(nomeLogico) do begin
      Readln(nomeLogico, texto);
      total := total + StrToInt(texto);
    end;
    // (5) Fechamento do arquivo
    CloseFile(nomeLogico);
    MessageDlg('Soma: '+IntToStr(total), mtInformation, [mbOK], 0);
  end;
end;

end.
