program FriendBookLogin_p;

uses
  Forms,
  FriendBookLogin_u in 'FriendBookLogin_u.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
