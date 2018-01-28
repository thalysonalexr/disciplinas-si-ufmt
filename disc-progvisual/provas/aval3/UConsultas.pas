unit UConsultas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids, ComCtrls, Buttons;

type
  TFConsultas = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGridEquipamentos: TDBGrid;
    GroupBox3: TGroupBox;
    CampoDescEquipamentos: TEdit;
    Label1: TLabel;
    btnConsultarEquip: TButton;
    QueryEquipamentos: TADOQuery;
    DataEquipamentos: TDataSource;
    QueryEquipamentosCodigoEq: TAutoIncField;
    QueryEquipamentosDescricaoEq: TStringField;
    QueryEquipamentosTipoEquipamento: TStringField;
    DBGridOrdens: TDBGrid;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    btnConsultarOrd: TButton;
    Label3: TLabel;
    DataInicial: TDateTimePicker;
    DataFinal: TDateTimePicker;
    QueryOrdensServ: TADOQuery;
    DataOrdens: TDataSource;
    SpeedButton1: TSpeedButton;
    QueryOrdensServCodigoOrdem: TAutoIncField;
    QueryOrdensServCodigoTecnico: TIntegerField;
    QueryOrdensServCodigoArea: TIntegerField;
    QueryOrdensServDataOrdem: TDateField;
    QueryOrdensServnometecnico: TStringField;
    QueryOrdensServnomearea: TStringField;
    QueryOrdensServcalc_data: TStringField;
    procedure btnConsultarEquipClick(Sender: TObject);
    procedure QueryOrdensServCalcFields(DataSet: TDataSet);
    procedure btnConsultarOrdClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultas: TFConsultas;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFConsultas.btnConsultarEquipClick(Sender: TObject);
begin
  QueryEquipamentos.Close;
  QueryEquipamentos.Parameters.ParamByName('descricao').Value := CampoDescEquipamentos.Text + '%';
  QueryEquipamentos.Open;
end;

procedure TFConsultas.btnConsultarOrdClick(Sender: TObject);
var dia, mes, ano: word;
begin
  QueryOrdensServ.Close;
  QueryOrdensServ.SQL.Clear;
  QueryOrdensServ.SQL.Add('select o.*, r.nometecnico, a.nomearea');
  QueryOrdensServ.SQL.Add('from ordensservicos o, responsaveistecnicos r, areasplantios a');
  QueryOrdensServ.SQL.Add('where o.codigotecnico=r.codigotecnico');
  QueryOrdensServ.SQL.Add('and o.codigoarea=a.codigoarea');
  if (DataInicial.Checked) then
  begin
    DecodeDate(DataInicial.Date, ano, mes, dia);
    QueryOrdensServ.SQL.Add('and o.dataordem >= '+QuotedStr(inttostr(ano)+'-'+inttostr(mes)+'-'+inttostr(dia)));
  end;
  if (DataFinal.Checked) then
  begin
    DecodeDate(DataFinal.Date, ano, mes, dia);
    QueryOrdensServ.SQL.Add('and o.dataordem <= '+QuotedStr(inttostr(ano)+'-'+inttostr(mes)+'-'+inttostr(dia)));
  end;
  QueryOrdensServ.Open;
end;

procedure TFConsultas.QueryOrdensServCalcFields(DataSet: TDataSet);
var dia, mes, ano: word;
  d, a: string;
begin
  DecodeDate(QueryOrdensServDataOrdem.Value, ano, mes, dia);
  d := FormatFloat('00', dia);
  a := inttostr(ano);
  case (mes) of
     1: QueryOrdensServcalc_data.Value := d+' de Janeiro de '+a;
     2: QueryOrdensServcalc_data.Value := d+' de Fevereiro de '+a;
     3: QueryOrdensServcalc_data.Value := d+' de Março de '+a;
     4: QueryOrdensServcalc_data.Value := d+' de Abril de '+a;
     5: QueryOrdensServcalc_data.Value := d+' de Maio de '+a;
     6: QueryOrdensServcalc_data.Value := d+' de Junho de '+a;
     7: QueryOrdensServcalc_data.Value := d+' de Julho de '+a;
     8: QueryOrdensServcalc_data.Value := d+' de Agosto de '+a;
     9: QueryOrdensServcalc_data.Value := d+' de Setembro de '+a;
    10: QueryOrdensServcalc_data.Value := d+' de Outubro de '+a;
    11: QueryOrdensServcalc_data.Value := d+' de Novembro de '+a;
    12: QueryOrdensServcalc_data.Value := d+' de Dezembro de '+a;
  end;
end;

procedure TFConsultas.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
