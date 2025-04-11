program MyPlaylist;

uses
  Forms,
  frmPlayList in 'frmPlayList.pas' {frmSong};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSong, frmSong);
  Application.Run;
end.
