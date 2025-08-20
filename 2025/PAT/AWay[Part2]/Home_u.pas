unit Home_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  dmAccounts_u;

type
  TfrmHome = class(TForm)
    imgHomeBackground: TImage;
    btnHomeBookFlights: TButton;
    btnHomeMyFlights: TButton;
    btnHomeProfile: TButton;
    lblHomeHeading1: TLabel;
    btnHomeLogOut: TButton;
    lblHomeHeading2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnHomeLogOutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnHomeBookFlightsClick(Sender: TObject);
    procedure btnHomeMyFlightsClick(Sender: TObject);
    procedure btnHomeProfileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}

uses LoginRegister_u, BookFlights_u, MyFlights_u, Profile_u;

procedure TfrmHome.btnHomeBookFlightsClick(Sender: TObject);
begin

  // Hide home screen and show flight booking form
  frmHome.Hide;
  frmBookFlights.Show;

end;

procedure TfrmHome.btnHomeLogOutClick(Sender: TObject);
begin

  // Hide home screen and return to login/register form
  frmHome.Hide;
  frmLoginRegister.Show;

end;

procedure TfrmHome.btnHomeMyFlightsClick(Sender: TObject);
begin

  // Hide home screen and show user's flights
  frmHome.Hide;
  frmMyFlights.Show;

end;

procedure TfrmHome.btnHomeProfileClick(Sender: TObject);
begin

  // Hide home screen and show user profile
  frmHome.Hide;
  frmProfile.Show;

end;

procedure TfrmHome.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  // Ensure the entire application terminates when this form is closed
  Application.Terminate;

end;

procedure TfrmHome.FormCreate(Sender: TObject);
begin

  // Remove form's title bar and borders for a clean fullscreen look
  BorderStyle := bsNone;

  // Maximize window to full screen
  SetBounds(0, 0, Screen.Width, Screen.Height);
  WindowState := wsMaximized;

  // Load background image for the home screen
  imgHomeBackground.Picture.LoadFromFile('Background.png');

  // Center main action buttons horizontally
  btnHomeBookFlights.Left := (frmHome.Width - btnHomeBookFlights.Width) div 2;
  btnHomeMyFlights.Left := (frmHome.Width - btnHomeMyFlights.Width) div 2;
  btnHomeProfile.Left := (frmHome.Width - btnHomeProfile.Width) div 2;

  // Place logout button near the bottom of the screen
  btnHomeLogOut.Top := (frmHome.Height - btnHomeLogOut.Height) div 100 * 99;

end;

procedure TfrmHome.FormShow(Sender: TObject);
begin

  // Display personalized welcome message using the logged-in username
  lblHomeHeading1.Caption := 'Welcome, ' + frmLoginRegister.sUsername + ' to';
  lblHomeHeading2.Caption := 'A-Way Airlines!';

  // Center the headings horizontally
  lblHomeHeading1.Left := (frmHome.Width - lblHomeHeading1.Width) div 2;
  lblHomeHeading2.Left := (frmHome.Width - lblHomeHeading2.Width) div 2;

end;

end.
