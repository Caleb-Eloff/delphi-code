program p_wordClock;

uses
  System.StartUpCopy,
  FMX.Forms,
  u_wordClock in 'u_wordClock.pas' {frmWordClock};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmWordClock, frmWordClock);
  Application.Run;
end.
