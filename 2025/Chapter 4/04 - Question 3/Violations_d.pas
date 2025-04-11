unit Violations_d;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmoViolations = class(TDataModule)
    ADOConnection1: TADOConnection;
    dsOwners: TDataSource;
    qryOwners: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmoViolations: TdmoViolations;

implementation

{$R *.dfm}

end.
