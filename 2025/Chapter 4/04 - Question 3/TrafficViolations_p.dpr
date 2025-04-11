program TrafficViolations_p;

uses
  Forms,
  TrafficViolations_u in 'TrafficViolations_u.pas' {Form1},
  Violations_d in 'Violations_d.pas' {dmoViolations: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmoViolations, dmoViolations);
  Application.Run;
end.
