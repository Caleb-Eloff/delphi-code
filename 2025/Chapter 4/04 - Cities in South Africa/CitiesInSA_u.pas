unit CitiesInSA_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Cities_d, StdCtrls;

type
  TfrmCities = class(TForm)
    dbgCitieData: TDBGrid;
    btnAll: TButton;
    btnInsert: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    procedure btnAllClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCities: TfrmCities;

implementation

{$R *.dfm}

procedure TfrmCities.btnAllClick(Sender: TObject);
  var
    sSqlQuery: String;
  begin
    sSqlQuery := 'SELECT * FROM cities';
    citiesDM.qryCities.SQL.Text := sSqlQuery;
    citiesDM.qryCities.active := true;

  end;

procedure TfrmCities.btnDeleteClick(Sender: TObject);
  var
    sSqlQuery: String;
begin
    citiesDM.qryCities.SQL.Clear;
    //sSqlQuery := ''; //Insert your SQL statement here
    citiesDM.qryCities.SQL.Text := sSqlQuery;
    citiesDM.qryCities.ExecSQL;
    // Clear the SQL and redisplay all the cities
    citiesDM.qryCities.SQL.Clear;
    sSqlQuery := 'SELECT * FROM cities';
    citiesDM.qryCities.SQL.Text := sSqlQuery;
    citiesDM.qryCities.active := true;
end;

procedure TfrmCities.btnInsertClick(Sender: TObject);
  var
    sSqlQuery: String;
  begin
    citiesDM.qryCities.SQL.Clear;
    //sSqlQuery := '';  //Insert your SQL statement here
    citiesDM.qryCities.SQL.Text := sSqlQuery;
    citiesDM.qryCities.ExecSQL;
    // Clear the SQL and redisplay all the cities
    citiesDM.qryCities.SQL.Clear;
    sSqlQuery := 'SELECT * FROM cities';
    citiesDM.qryCities.SQL.Text := sSqlQuery;
    citiesDM.qryCities.active := true;
  end;

procedure TfrmCities.btnUpdateClick(Sender: TObject);
var
  sSqlQuery: String;
begin
      citiesDM.qryCities.SQL.Clear;
    //sSqlQuery := ''; //Insert your SQL statement here
    citiesDM.qryCities.SQL.Text := sSqlQuery;
    citiesDM.qryCities.ExecSQL;
    // Clear the SQL and redisplay all the provinces
    citiesDM.qryCities.SQL.Clear;
    sSqlQuery := 'SELECT * FROM provinces';
    citiesDM.qryCities.SQL.Text := sSqlQuery;
    citiesDM.qryCities.active := true;
end;



end.
