unit UExe1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFExe1 = class(TForm)
    Lista: TListBox;
    Label1: TLabel;
    CampoTexto: TEdit;
    btnAcrescentar: TButton;
    btnExcluir: TButton;
    btnContar: TButton;
    btnSair: TButton;
    btnExcluirAll: TButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnAcrescentarClick(Sender: TObject);
    procedure ListaDblClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnContarClick(Sender: TObject);
    procedure CampoTextoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExe1: TFExe1;

implementation

{$R *.dfm}

procedure TFExe1.btnAcrescentarClick(Sender: TObject);
begin
     Lista.Items.Add(CampoTexto.Text);
     CampoTexto.Clear;

     if (Lista.Items.Count > 0) then begin
        btnContar.Enabled := True;
        btnExcluir.Enabled := True;
        btnExcluirAll.Enabled := True;
     end;
     
     CampoTexto.SetFocus;
end;

procedure TFExe1.btnContarClick(Sender: TObject);
begin
     ShowMessage('Total de linhas: ' + IntToStr(Lista.Items.Count))
end;

procedure TFExe1.btnExcluirAllClick(Sender: TObject);
begin
     if (MessageDlg('Deseja realmente excluir tudo?', mtInformation, [mbYes, mbNo], 0) = mrYes) then begin
        Lista.Items.Clear;
        btnContar.Enabled := False;
        btnExcluir.Enabled := False;
        btnExcluirAll.Enabled := False;
     end;
end;

procedure TFExe1.btnExcluirClick(Sender: TObject);
begin
  if (Lista.ItemIndex = -1) then begin
     MessageDlg('Não há linhas selecionadas!', mtWarning, [mbOk], 0);
     Lista.SetFocus;
     exit;
  end;

  if (MessageDlg('Confirmar exclusão da linha?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     Lista.Items.Delete(Lista.ItemIndex);

  if (Lista.Items.Count = 0) then begin
     btnContar.Enabled := False;
     btnExcluir.Enabled := False;
     btnExcluirAll.Enabled := False;
  end;

end;

procedure TFExe1.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFExe1.CampoTextoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
/////////////////////////////////////////////
///  Verificar acrescentar
/////////////////////////////////////////////
  if (Length(CampoTexto.Text) = 0) then
    btnAcrescentar.Enabled := False
  else
    btnAcrescentar.Enabled := True;

end;

procedure TFExe1.ListaDblClick(Sender: TObject);
begin
  ShowMessage(IntToStr(Lista.Itemindex));
end;

end.
