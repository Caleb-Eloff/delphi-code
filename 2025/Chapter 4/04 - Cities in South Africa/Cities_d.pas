unit Cities_d;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TCitiesDM = class(TDataModule)
    conCities: TADOConnection;
    qryCities: TADOQuery;
    sorCities: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CitiesDM: TCitiesDM;

implementation

{$R *.dfm}

end.
