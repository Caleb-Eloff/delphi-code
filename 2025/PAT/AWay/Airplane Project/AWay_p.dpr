program AWay_p;

uses
  Vcl.Forms,
  Login_u in 'Login_u.pas' {frmLogin},
  Register_u in 'Register_u.pas' {frmRegister},
  Home_u in 'Home_u.pas' {frmHome};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmRegister, frmRegister);
  Application.CreateForm(TfrmHome, frmHome);
  Application.Run;
end.
