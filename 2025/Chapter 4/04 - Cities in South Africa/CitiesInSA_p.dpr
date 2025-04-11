program CitiesInSA_p;

uses
  Forms,
  CitiesInSA_u in 'CitiesInSA_u.pas' {frmCities},
  Cities_d in 'Cities_d.pas' {CitiesDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCities, frmCities);
  Application.CreateForm(TCitiesDM, CitiesDM);
  Application.Run;
end.
