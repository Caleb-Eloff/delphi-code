program frmQuestion3_p;

uses
  Forms,
  Question3_u in 'Question3_u.pas' {frmSchools};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSchools, frmSchools);
  Application.Run;
end.
