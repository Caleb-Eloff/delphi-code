program Question1_P;

uses
  Vcl.Forms,
  Question1_U in 'Question1_U.pas' {Form1},
  Battery_U in 'Battery_U.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
