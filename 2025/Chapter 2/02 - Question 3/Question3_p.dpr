program Question3_p;

uses
  Forms,
  Question3_u in 'Question3_u.pas' {frmStars},
  Star_U in 'Star_U.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmStars, frmStars);
  Application.Run;
end.
