unit Home_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmHome = class(TForm)
    pnlCustomers: TPanel;
    imgCustomersBackground: TImage;
    lblCustomersWelcome: TLabel;
    btnBookFlight: TButton;
    btnMyFlights: TButton;
    btnProfile: TButton;
    btnSupport: TButton;
    btnCustomersLogOut: TButton;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}

uses Login_u;

procedure TfrmHome.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Application.Terminate;

end;

end.
