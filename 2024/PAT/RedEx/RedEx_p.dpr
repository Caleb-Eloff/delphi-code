program RedEx_p;

uses
  Vcl.Forms,
  SignUp_u in 'SignUp_u.pas' {frmSignUp},
  SignIn_u in 'SignIn_u.pas' {frmSignIn},
  Details_u in 'Details_u.pas' {frmDetails},
  dmAccounts_u in 'dmAccounts_u.pas' {dmAccounts: TDataModule},
  Home_u in 'Home_u.pas' {frmHome},
  Training_u in 'Training_u.pas' {frmTraining};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSignUp, frmSignUp);
  Application.CreateForm(TfrmSignIn, frmSignIn);
  Application.CreateForm(TfrmDetails, frmDetails);
  Application.CreateForm(TdmAccounts, dmAccounts);
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TfrmTraining, frmTraining);
  Application.Run;
end.
