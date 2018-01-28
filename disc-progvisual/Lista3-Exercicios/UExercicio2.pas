unit UExercicio2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Menus;

type
  TFExercicio2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    SpeedButton1: TSpeedButton;
    CampoTexto1: TEdit;
    btnInverterStr: TButton;
    CampoTexto2: TEdit;
    btnVogais: TButton;
    CampoTexto3: TEdit;
    CampoTexto4: TEdit;
    Button1: TButton;
    CampoTexto5: TEdit;
    ListBox1: TListBox;
    btnCortar: TButton;
    btnInverter: TButton;
    lista1: TListBox;
    lista2: TListBox;
    btnInverter2: TButton;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInverterStrClick(Sender: TObject);
    procedure btnVogaisClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnCortarClick(Sender: TObject);
    procedure btnInverterClick(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure btnInverter2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TStr = class
  public
    Texto: String;
    Valores: array[1..2, 1..2] of String;
    // Inverter texto
    procedure Sobre(); overload;
    // Quantidade de cada vogal
    procedure Sobre(var a, e, i, o, u: Integer); overload;
    // Pesquisar e contar caracteres
    procedure Sobre(car: Char); overload;
    // Apresentar uma palavra por linha
    procedure Sobre(lista: TListBox); overload;
    // Inverter a linha de uma matriz de Strings
    procedure Sobre(linha: Integer); overload;
    // Inverter colunas de uma lista apresentando o resultado em outra
    procedure Sobre(lista1, lista2: TListBox); overload;
  end;

var
  FExercicio2: TFExercicio2;
  texto: TStr;

implementation

{$R *.dfm}

// Inverter texto
procedure TStr.Sobre;
var i: Integer;
    a: String;
begin
    a := '';
    for i:= Length(Texto) downto 1 do
        a := a + Texto[i];
    ShowMessage('Invertida: '+a);
end;

// Quantidade de cada vogal
procedure TStr.Sobre(var a, e, i, o, u: Integer);
var x: Integer;
begin
    for x := 1 to Length(Texto) do
        case UpCase(Texto[x]) of
            'A': Inc(a);
            'E': Inc(e);
            'I': Inc(i);
            'O': Inc(o);
            'U': Inc(u);
        end;
end;

// Pesquisar e contar caracteres
procedure TStr.Sobre(car: Char);
var i, t: Integer;
begin
    t := 0;
    for i := 1 to Length(Texto) do
        if (UpCase(Texto[i]) = UpCase(car)) then
            Inc(t);
    ShowMessage('Ocorrências: '+inttostr(t));
end;

// Apresentar uma palavra por linha
procedure TStr.Sobre(lista: TListBox);
var i: Integer;
    aux: String;
begin
    lista.Clear;
    aux := '';
    for i := 1 to Length(Texto) do begin
        if (Texto[i] <> ' ') then
            aux := aux + Texto[i]
        else begin
            if (Texto[i-1] <> ' ') then
              lista.Items.Add(aux);
            aux := '';
        end;
    end;
    lista.Items.Add(aux);
end;

// Inverter a linha de uma matriz de Strings
procedure TStr.Sobre(linha: Integer);
var c:integer;
    aux,temp:string;
begin
  aux:='';
  temp:=valores[linha,1]+' '+valores[linha,2];
  for c:=length(temp) downto 1 do
    aux:=aux+temp[c];
  showmessage(aux);
end;

// Inverter colunas de uma lista apresentando o resultado em outra
procedure TStr.Sobre(lista1, lista2: TListBox);
var i, j: Integer;
    a, n: String;
begin
    lista2.Clear;
    for i := 0 to lista1.Count - 1 do begin
        n := '';
        a := lista1.Items[i];
        for j := Length(a) downto 1 do
            n := n + a[j];
        Lista2.Items.Add(n);
    end;
end;

procedure TFExercicio2.btnInverter2Click(Sender: TObject);
begin
    texto.Sobre(lista1, lista2);
end;

procedure TFExercicio2.btnInverterClick(Sender: TObject);
begin
    texto.Sobre(strtoint(InputBox('Entrada','Linha: ','')));
end;

procedure TFExercicio2.btnInverterStrClick(Sender: TObject);
begin
    if (CampoTexto1.Text <> '') then begin texto.Texto := CampoTexto1.Text; texto.Sobre(); end;
end;

procedure TFExercicio2.btnVogaisClick(Sender: TObject);
var va, ve, vi, vo, vu: Integer;
begin
    if (CampoTexto2.Text <> '') then begin
        texto.Texto := CampoTexto2.Text;
        texto.Sobre(va, ve, vi, vo, vu);
        ShowMessage('(A: '+IntToStr(va)
                 +')-(E: '+IntToStr(ve)
                 +')-(I: '+IntToStr(vi)
                 +')-(O: '+IntToStr(vo)
                 +')-(U: '+IntToStr(vu)+')');
    end;
end;

procedure TFExercicio2.Button1Click(Sender: TObject);
begin
    if ((CampoTexto3.Text <> '') and (CampoTexto4.Text <> '')) then begin
        texto.Texto := CampoTexto3.Text;
        texto.Sobre(CampoTexto4.Text[1]);
    end;
end;

procedure TFExercicio2.Excluir1Click(Sender: TObject);
begin
    lista1.Items.Delete(lista1.ItemIndex);
end;

procedure TFExercicio2.btnCortarClick(Sender: TObject);
begin
    if (CampoTexto5.Text <> '') then begin
        texto.Texto := CampoTexto5.Text;
        texto.Sobre(ListBox1);
    end;
end;

procedure TFExercicio2.FormShow(Sender: TObject);
begin
    texto := TStr.Create();
    texto.Texto := 'Roondonopolis Mato Grosso';
    texto.Valores[1,1] := 'Mato Grosso';
    texto.Valores[1,2] := 'UFMT';
    texto.Valores[2,1] := 'Sistemas';
    texto.Valores[2,2] := 'Informação';
end;

procedure TFExercicio2.Inserir1Click(Sender: TObject);
begin
    lista1.Items.Add(InputBox('Entrada','Dado: ',''));
end;

procedure TFExercicio2.SpeedButton1Click(Sender: TObject);
begin
    Close;
end;

end.
