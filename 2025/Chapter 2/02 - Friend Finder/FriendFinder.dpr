program FriendFinder;

uses
  Forms,
  FindFriend in 'FindFriend.pas' {Form1},
  FriendClass in 'FriendClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
