program photoBomb_p;

uses
  Vcl.Forms,
  photoBomb_u in 'photoBomb_u.pas' {frmPhotoBomb};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPhotoBomb, frmPhotoBomb);
  Application.Run;
end.
