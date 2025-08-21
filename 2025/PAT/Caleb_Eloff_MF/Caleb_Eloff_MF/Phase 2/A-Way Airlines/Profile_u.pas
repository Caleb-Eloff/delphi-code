unit Profile_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  dmAccounts_u, Vcl.ComCtrls;

type
  TfrmProfile = class(TForm)
    imgProfileBackground: TImage;
    lblProfileHeading: TLabel;
    btnEditProfile: TButton;
    btnProfileBack: TButton;
    redProfile: TRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProfileBackClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditProfileClick(Sender: TObject);
  private
    procedure CenterControls; // Repositions controls to center of screen
  public
  end;

var
  frmProfile: TfrmProfile;

implementation

{$R *.dfm}

uses Home_u, LoginRegister_u, ProfileManager_u;

procedure TfrmProfile.btnEditProfileClick(Sender: TObject);
begin

  // Call ProfileManager to prompt user for edits and update database
  TProfileManager.EditProfile(frmLoginRegister.sUserID, redProfile);

end;

procedure TfrmProfile.btnProfileBackClick(Sender: TObject);
begin

  // Hide profile form and return to home screen
  frmProfile.Hide;
  frmHome.Show;

end;

procedure TfrmProfile.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  // Terminate application when profile form is closed
  Application.Terminate;

end;

procedure TfrmProfile.FormCreate(Sender: TObject);
begin

  // Remove title bar and borders
  BorderStyle := bsNone;

  // Maximize form to full screen
  SetBounds(0, 0, Screen.Width, Screen.Height);
  WindowState := wsMaximized;

  // Load background image
  imgProfileBackground.Picture.LoadFromFile('Background.png');

  // Center controls on screen
  CenterControls;

end;

procedure TfrmProfile.FormShow(Sender: TObject);
begin

  // Load current user's profile into RichEdit using ProfileManager
  TProfileManager.LoadProfile(frmLoginRegister.sUserID, redProfile);

end;

procedure TfrmProfile.CenterControls;
begin

  // Center RichEdit vertically and horizontally
  redProfile.Left := (ClientWidth - redProfile.Width) DIV 2;
  redProfile.Top := (ClientHeight - redProfile.Height) DIV 2;

  // Center heading label horizontally
  lblProfileHeading.Left := (ClientWidth - lblProfileHeading.Width) DIV 2;

  // Center edit button horizontally
  btnEditProfile.Left := (ClientWidth - btnEditProfile.Width) DIV 2;

end;

end.
