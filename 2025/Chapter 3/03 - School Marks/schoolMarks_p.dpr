program schoolMarks_p;

uses
  Forms,
  schoolMarks_u in 'schoolMarks_u.pas' {frmSchoolMarks};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSchoolMarks, frmSchoolMarks);
  Application.Run;
end.
