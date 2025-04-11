unit chapter3Q1_d;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmoBandB = class(TDataModule)
    conBandB: TADOConnection;
    qryQuery: TADOQuery;
    sorQuery: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmoBandB: TdmoBandB;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
