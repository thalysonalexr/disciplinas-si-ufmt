unit UExercicio2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Menus;

type
  TFExercicio2 = class(TForm)
    GroupBox1: TGroupBox;
    CampoPesquisa: TEdit;
    CampoSubs: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CampoCont: TEdit;
    ListBox1: TListBox;
    btnSubs: TButton;
    btnContar: TButton;
    btnSair: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Inserir: TMenuItem;
    Excluir: TMenuItem;
    btnLerOrigem: TButton;
    btnLerDestino: TButton;
    btnSalvarOrigem: TButton;
    btnSalvarDestino: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure InserirClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure btnLerOrigemClick(Sender: TObject);
    procedure btnLerDestinoClick(Sender: TObject);
    procedure btnSalvarOrigemClick(Sender: TObject);
    procedure btnSalvarDestinoClick(Sender: TObject);
    procedure btnSubsClick(Sender: TObject);
    procedure btnContarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TArqPes = class
  public
    Origem, Destino: String;
    procedure SubstituirCar(car1, car2: Char);
    function ContarCar(car: Char): Integer;
  private
    Log_Origem, Log_Destino: TextFile;
  end;

var
  FExercicio2: TFExercicio2;
  arquivos: TArqPes;

implementation

{$R *.dfm}

procedure TArqPes.SubstituirCar(car1, car2: Char);
var aux: String;
  i: Integer;
begin
  AssignFile(Log_Origem, Origem);
  AssignFile(Log_Destino, Destino);

  Reset(Log_Origem);
  Rewrite(Log_Destino);

  while not Eof(Log_Origem) do begin
    Readln(Log_Origem, aux);
    for i := 1 to Length(aux) do
        if (aux[i] = car1) then
            aux[i] := car2;
    Writeln(Log_Destino, aux);
  end;

  CloseFile(Log_Origem);
  CloseFile(Log_Destino);
end;

function TArqPes.ContarCar(car: Char): Integer;
var aux: String;
  total, i: Integer;
begin
  AssignFile(Log_Origem, Origem);
  Reset(Log_Origem);
  total := 0;

  while not Eof(Log_Origem) do begin
    Readln(Log_Origem, aux);
    for i := 1 to Length(aux) do
      if (aux[i] = car) then
        Inc(total);
  end;

  CloseFile(Log_Origem);
  ContarCar := total;
end;

procedure TFExercicio2.btnLerDestinoClick(Sender: TObject);
var
    texto: String;
begin
  ListBox1.Clear;
  AssignFile(arquivos.Log_Destino, arquivos.Destino);

  if (FileExists(arquivos.Destino)) then begin
    Reset(arquivos.Log_Destino);

    while not Eof(arquivos.Log_Destino) do begin
      Readln(arquivos.Log_Destino, texto);
      ListBox1.Items.Add(texto);
    end;

    CloseFile(arquivos.Log_Destino);
  end;
end;

procedure TFExercicio2.btnLerOrigemClick(Sender: TObject);
var
    texto: String;
begin
  ListBox1.Clear;
  AssignFile(arquivos.Log_Origem, arquivos.Origem);

  if (FileExists(arquivos.Origem)) then begin
    Reset(arquivos.Log_Origem);

    while not Eof(arquivos.Log_Origem) do begin
      Readln(arquivos.Log_Origem, texto);
      ListBox1.Items.Add(texto);
    end;
    
    CloseFile(arquivos.Log_Origem);
  end;
end;

procedure TFExercicio2.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFExercicio2.btnSalvarDestinoClick(Sender: TObject);
var
    i: Integer;
    texto: String;
begin
  AssignFile(arquivos.Log_Destino, arquivos.Destino);

  if (FileExists(arquivos.Destino)) then begin
    Reset(arquivos.Log_Destino);
    Readln(arquivos.Log_Destino, texto);
    if (texto <> '') then begin
      if (MessageDlg('Existe conteudo neste arquivo, deseja sobrescrever?',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo) then begin
        CloseFile(arquivos.Log_Destino);
        Exit;
      end;
    end;
  end;
  Rewrite(arquivos.Log_Destino);
  for i := 0 to ListBox1.Count - 1 do
    Writeln(arquivos.Log_Destino, ListBox1.Items[i]);
  CloseFile(arquivos.Log_Destino);
end;

procedure TFExercicio2.btnSalvarOrigemClick(Sender: TObject);
var
    i: Integer;
    texto: String;
begin
  AssignFile(arquivos.Log_Origem, arquivos.Origem);

  if (FileExists(arquivos.Origem)) then begin
    Reset(arquivos.Log_Origem);
    Readln(arquivos.Log_Origem, texto);
    if (texto <> '') then begin
      if (MessageDlg('Existe conteudo neste arquivo, deseja sobrescrever?',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo) then begin
        CloseFile(arquivos.Log_Origem);
        Exit;
      end;
    end;
  end;
  Rewrite(arquivos.Log_Origem);
  for i := 0 to ListBox1.Count - 1 do
    Writeln(arquivos.Log_Origem, ListBox1.Items[i]);
  CloseFile(arquivos.Log_Origem);
end;

procedure TFExercicio2.btnSubsClick(Sender: TObject);
var aux1, aux2: String;
begin
  aux1 := CampoPesquisa.Text;
  aux2 := CampoSubs.Text;

  if ((Length(aux1)>1) or (Length(aux2)>1)) then begin
    ShowMessage('Digite apenas um caracter!');
    Exit;
  end;

  if ((aux1 = '') or (aux2 = '')) then
    ShowMessage('Campo vazio! Preencha corretamente!')
  else
    arquivos.SubstituirCar(aux1[1], aux2[1]);
end;

procedure TFExercicio2.btnContarClick(Sender: TObject);
var n: Integer;
    aux: String;
begin
  aux := CampoCont.Text;

  if (Length(aux)>1) then begin
    ShowMessage('Digite apenas um caracter!');
    Exit;
  end;

  if (aux='') then
    ShowMessage('Campo vazio! Preencha corretamente!')
  else begin
    n := arquivos.ContarCar(CampoCont.Text[1]);
    ShowMessage('Existem '+inttostr(n)+' caracteres no arquivo de Origem!');
  end;
end;

procedure TFExercicio2.FormShow(Sender: TObject);
var
    texto: String;
begin
  arquivos := TArqPes.Create();
  arquivos.Origem := 'C:\arquivos_delphi\Origem.txt';
  arquivos.Destino := 'C:\arquivos_delphi\Destino.txt';

  AssignFile(arquivos.Log_Origem, arquivos.Origem);

  if (FileExists(arquivos.Origem)) then begin
    Reset(arquivos.Log_Origem);

    while not Eof(arquivos.Log_Origem) do begin
      Readln(arquivos.Log_Origem, texto);
      ListBox1.Items.Add(texto);
    end;

    CloseFile(arquivos.Log_Origem);
  end;

end;

procedure TFExercicio2.InserirClick(Sender: TObject);
var aux: String;
begin
    aux := InputBox('Entrada de texto', 'Digite seu texto:', '');

    if (Trim(aux) = '') then
        ShowMessage('Texto inválido!')
    else
        ListBox1.Items.Add(aux);
end;

procedure TFExercicio2.ExcluirClick(Sender: TObject);
begin
    if (ListBox1.Count = 0) then
        ShowMessage('ListBox vazio!')
    else
    if (ListBox1.ItemIndex = -1) then
        ShowMessage('Selecione algo a ser excluído!')
    else
        ListBox1.Items.Delete(ListBox1.ItemIndex);
end;

end.
