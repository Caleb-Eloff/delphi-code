program SortApp_P;

uses
  Forms,
  SortApp_U in 'SortApp_U.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.