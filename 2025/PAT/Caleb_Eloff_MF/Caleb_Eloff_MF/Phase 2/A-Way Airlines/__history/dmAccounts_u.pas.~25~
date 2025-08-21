unit dmAccounts_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmAccounts = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tblAccounts, tblFlights: TADOTable;
    dscAccounts, dscFlights: TDataSource;
    conAccounts: TADOConnection;
    qryAccounts, qryFlights: TADOQuery;
  end;

var
  dmAccounts: TdmAccounts;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmAccounts.DataModuleCreate(Sender: TObject);
begin

  // Create and configure the database connection and tables
  conAccounts := TADOConnection.Create(dmAccounts);
  tblAccounts := TADOTable.Create(dmAccounts);
  tblFlights := TADOTable.Create(dmAccounts);
  dscAccounts := TDataSource.Create(dmAccounts);
  dscFlights := TDataSource.Create(dmAccounts);

  conAccounts.Close;

  // Set up the connection string for the database
  conAccounts.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
    ExtractFilePath(ParamStr(0)) + 'Accounts.mdb' +
    ';Persist Security Info=False';
  conAccounts.LoginPrompt := False;
  conAccounts.Open;

  // Associate tables with the database connection
  tblAccounts.Connection := conAccounts;
  tblAccounts.TableName := 'tblAccounts';
  tblFlights.Connection := conAccounts;
  tblFlights.TableName := 'tblFlights';

  // Associate data sources with the tables
  dscAccounts.DataSet := tblAccounts;
  dscFlights.DataSet := tblFlights;

  // Open the tables
  tblAccounts.Open;
  tblFlights.Open;

  // Query set up
  qryAccounts := TADOQuery.Create(dmAccounts);
  qryAccounts.Connection := conAccounts;

  qryFlights := TADOQuery.Create(dmAccounts);
  qryFlights.Connection := conAccounts;

end;

end.
