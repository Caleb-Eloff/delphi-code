program MusicSearcher_p;

uses
  Forms,
  musicSearcher_u in 'musicSearcher_u.pas' {Form1},
  music_d in 'music_d.pas' {dmoMusic: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmoMusic, dmoMusic);
  Application.Run;
end.
