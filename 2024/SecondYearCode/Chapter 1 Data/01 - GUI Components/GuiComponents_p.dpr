program GuiComponents_p;

uses
  Forms,
  GuiComponents_u in 'GuiComponents_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.