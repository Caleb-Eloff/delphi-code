unit Admin_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, dmAccounts_u;

type
  TfrmAdmin = class(TForm)
    imgAdminBackground: TImage;
    dbgProfiles: TDBGrid;
    lblAdminPanel: TLabel;
    btnAdminLogOut: TButton;
    btnCreate: TButton;
    btnUpdate: TButton;
    btnRemove: TButton;
    memPricing: TMemo;
    lblPricing: TLabel;
    btnUpdatePrice: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AutoSizeGridColumns(Grid: TDBGrid);
    procedure btnAdminLogOutClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCreateClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnUpdatePriceClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmAdmin: TfrmAdmin;

implementation

{$R *.dfm}

uses LoginRegister_u, BookFlights_u, AccountManager_u;

procedure TfrmAdmin.AutoSizeGridColumns(Grid: TDBGrid);
var
  i, iVisibleCols, iColWidth: Integer;

begin

  iVisibleCols := 0;

  // Count how many columns are visible
  for i := 0 to Grid.Columns.Count - 1 do
    if Grid.Columns[i].Visible then
      Inc(iVisibleCols);

  // Exit if no visible columns
  if iVisibleCols = 0 then
    Exit;

  // Calculate equal width for each visible column
  iColWidth := Grid.ClientWidth div iVisibleCols;

  // Apply calculated width to each visible column
  for i := 0 to Grid.Columns.Count - 1 do
    if Grid.Columns[i].Visible then
      Grid.Columns[i].Width := iColWidth;

end;

procedure TfrmAdmin.btnAdminLogOutClick(Sender: TObject);
begin

  // Hide admin form and show login/register form
  frmAdmin.Hide;
  frmLoginRegister.Show;

end;

procedure TfrmAdmin.btnCreateClick(Sender: TObject);
begin

  // Call external class to create account
  TAccountManager.CreateAccount;

  // Resize grid columns after update
  AutoSizeGridColumns(dbgProfiles);

end;

procedure TfrmAdmin.btnRemoveClick(Sender: TObject);
begin

  // Call external class to remove account
  TAccountManager.RemoveAccount;

  // Resize grid columns after update
  AutoSizeGridColumns(dbgProfiles);

end;

procedure TfrmAdmin.btnUpdateClick(Sender: TObject);
begin

  // Call external class to update account
  TAccountManager.UpdateAccount;

  // Resize grid columns after update
  AutoSizeGridColumns(dbgProfiles);

end;

procedure TfrmAdmin.btnUpdatePriceClick(Sender: TObject);
begin

  // Prompt admin to enter new price per pixel
  frmBookFlights.pricePerPixel :=
    StrToFloat(InputBox('Pricing', 'Price per pixel distance: ', ''));

  // Display updated pricing in memo
  memPricing.Lines.Clear;
  memPricing.Lines.Add('Price per pixel distance:');
  memPricing.Lines.Add(FloatToStr(frmBookFlights.pricePerPixel));

end;

procedure TfrmAdmin.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  // Terminate application when admin form closes
  Application.Terminate;

end;

procedure TfrmAdmin.FormCreate(Sender: TObject);
begin

  // Link grid to account data source
  dbgProfiles.DataSource := dmAccounts.dscAccounts;

  // Remove window borders and title bar
  BorderStyle := bsNone;

  // Maximize form to full screen
  SetBounds(0, 0, Screen.Width, Screen.Height);
  WindowState := wsMaximized;

  // Load background image
  imgAdminBackground.Picture.LoadFromFile('Background.png');

  // Center grid and label horizontally
  dbgProfiles.Left := (ClientWidth - dbgProfiles.Width) DIV 2;
  lblAdminPanel.Left := (ClientWidth - lblAdminPanel.Width) DIV 2;

  // Resize grid columns
  AutoSizeGridColumns(dbgProfiles);

end;

procedure TfrmAdmin.FormShow(Sender: TObject);
begin

  // Load account data into grid
  with dmAccounts do
  begin
    qryAccounts.Close;
    qryAccounts.SQL.Text := 'SELECT * FROM tblAccounts';
    qryAccounts.Open;
  end;

  // Display current pricing in memo
  memPricing.Lines.Clear;
  memPricing.Lines.Add('Price per pixel distance:');
  memPricing.Lines.Add(FloatToStr(frmBookFlights.pricePerPixel));

end;

end.
