unit AccountManager_u;

interface

uses
  System.SysUtils, System.Classes, Vcl.Dialogs, Math, dmAccounts_u,
  Vcl.DBGrids;

type
  TAccountManager = class
  public
    class procedure CreateAccount; // Adds a new user to the database
    class procedure UpdateAccount; // Updates selected user's details
    class procedure RemoveAccount; // Deletes selected user and their flights
    class procedure RefreshAccountGrid; // Reloads the account query for display
    class procedure RefreshAllTables; // Reloads both account and flight tables
    class procedure FilterFlightsByUserID(const sUserID: String);
    // Filters flights by user
    class procedure ClearFlightFilter; // Removes any active flight filters
    class procedure ResizeGridColumns(Grid: TDBGrid);
    // Evenly resizes grid columns
  end;

implementation

uses Admin_u, Winapi.Windows;

class procedure TAccountManager.CreateAccount;
var
  sFirstName, sLastName, sEmail, sPassword, sUserID: String;
  bIsAdmin, bAccountFound: Boolean;

begin

  // Prompt for user details
  sFirstName := InputBox('New Account', 'Enter First Name:', '');
  if sFirstName = '' then
    Exit;

  sLastName := InputBox('New Account', 'Enter Last Name:', '');
  if sLastName = '' then
    Exit;

  sEmail := InputBox('New Account', 'Enter Email:', '');
  if sEmail = '' then
    Exit;

  sPassword := InputBox('New Account', 'Enter Password:', '');
  if sPassword = '' then
    Exit;

  // Ask if user should be an admin
  bIsAdmin := MessageDlg('Should this user be an admin?', mtConfirmation,
    [mbYes, mbNo], 0) = idYes;

  // Check if email already exists
  bAccountFound := False;

  with dmAccounts.tblAccounts do
  begin

    First;

    while not Eof do
    begin

      if LowerCase(FieldByName('Email').AsString) = LowerCase(sEmail) then
      begin

        bAccountFound := True;
        Break;

      end;

      Next;

    end;
  end;

  if bAccountFound then
  begin

    ShowMessage('An account with this email already exists.');
    Exit;

  end;

  // Generate a unique UserID using parts of name and email
  sUserID := LowerCase(Copy(sFirstName, 1, 3)) + LowerCase(Copy(sLastName, 1, 3)
    ) + LowerCase(Copy(sEmail, 1, 3)) + IntToStr(RandomRange(1, 101)) +
    IntToStr(RandomRange(1, 101));

  // Insert new account into the database
  with dmAccounts.tblAccounts do
  begin

    Insert;
    FieldByName('UserID').AsString := sUserID;
    FieldByName('FirstName').AsString := sFirstName;
    FieldByName('LastName').AsString := sLastName;
    FieldByName('Email').AsString := LowerCase(sEmail);
    FieldByName('Password').AsString := sPassword;
    FieldByName('Admin').AsBoolean := bIsAdmin;
    Post;

  end;

  ShowMessage('New account created successfully! UserID: ' + sUserID);

  // Refresh tables to show new account
  RefreshAllTables;

end;

class procedure TAccountManager.UpdateAccount;
var
  sNewFirstName, sNewLastName, sNewEmail, sNewPassword: String;
  bIsAdmin: Boolean;

begin

  // Check if there are any users to update
  if dmAccounts.tblAccounts.IsEmpty then
  begin

    ShowMessage('No users in the database.');
    Exit;

  end;

  // Prompt for updated user details
  sNewFirstName := InputBox('Edit User', 'Enter First Name:',
    dmAccounts.tblAccounts.FieldByName('FirstName').AsString);
  sNewLastName := InputBox('Edit User', 'Enter Last Name:',
    dmAccounts.tblAccounts.FieldByName('LastName').AsString);
  sNewEmail := InputBox('Edit User', 'Enter Email:',
    dmAccounts.tblAccounts.FieldByName('Email').AsString);
  sNewPassword := InputBox('Edit User', 'Enter Password:',
    dmAccounts.tblAccounts.FieldByName('Password').AsString);

  bIsAdmin := MessageDlg('Should this user be an admin?', mtConfirmation,
    [mbYes, mbNo], 0) = idYes;

  // Basic email format validation
  if (Pos('@', sNewEmail) = 0) or (Pos('.com', LowerCase(sNewEmail)) = 0) then
  begin

    ShowMessage
      ('Invalid email format. Email must contain "@" and end with ".com".');
    Exit;

  end;

  // Apply updates to selected record
  with dmAccounts.tblAccounts do
  begin

    Edit;
    FieldByName('FirstName').AsString := sNewFirstName;
    FieldByName('LastName').AsString := sNewLastName;
    FieldByName('Email').AsString := sNewEmail;
    FieldByName('Password').AsString := sNewPassword;
    FieldByName('Admin').AsBoolean := bIsAdmin;
    Post;

  end;

  ShowMessage('User updated successfully.');

  // Refresh tables to reflect changes
  RefreshAllTables;

end;

class procedure TAccountManager.RemoveAccount;
var
  sSelectedUserID: String;

begin
  // Check if there are any users to remove
  if dmAccounts.tblAccounts.IsEmpty then
  begin

    ShowMessage('No users in the database.');
    Exit;

  end;

  // Get UserID of selected user
  sSelectedUserID := dmAccounts.tblAccounts.FieldByName('UserID').AsString;

  // Confirm deletion
  if MessageDlg
    ('Are you sure you want to delete this user and all their flights?',
    mtConfirmation, [mbYes, mbNo], 0) <> idYes then
    Exit;

  // Delete all flights linked to this user
  with dmAccounts.tblFlights do
  begin

    First;

    while not Eof do
    begin

      if FieldByName('UserID').AsString = sSelectedUserID then
        Delete
      else
        Next;

    end;
  end;

  // Delete the user account
  dmAccounts.tblAccounts.Delete;

  ShowMessage('User and related flights successfully removed.');

  // Refresh tables to reflect removal
  RefreshAllTables;

end;

class procedure TAccountManager.RefreshAccountGrid;
begin

  // Reload the account query to update the grid
  with dmAccounts.qryAccounts do
  begin

    Close;
    SQL.Text := 'SELECT * FROM tblAccounts ORDER BY UserID ASC';
    Open;

  end;
end;

class procedure TAccountManager.RefreshAllTables;
begin

  // Reload both account and flight tables
  with dmAccounts.tblAccounts do
  begin

    DisableControls;
    Close;
    Open;
    EnableControls;

  end;

  with dmAccounts.tblFlights do
  begin

    DisableControls;
    Close;
    Open;
    EnableControls;

  end;
end;

class procedure TAccountManager.FilterFlightsByUserID(const sUserID: string);
begin

  // Filter flights to show only those for the given UserID
  dmAccounts.tblFlights.Filter := 'UserID = ''' + sUserID + '''';
  dmAccounts.tblFlights.Filtered := True;

end;

class procedure TAccountManager.ClearFlightFilter;
begin

  // Remove any active filters on the flights table
  dmAccounts.tblFlights.Filtered := False;
  dmAccounts.tblFlights.Filter := '';

end;

class procedure TAccountManager.ResizeGridColumns(Grid: TDBGrid);
var
  i, iVisibleCols, iColWidth: Integer;

begin

  // Make sure grid and data are valid
  if not Assigned(Grid) or not Assigned(Grid.DataSource) or
    not Assigned(Grid.DataSource.DataSet) then
    Exit;

  // Count visible columns
  iVisibleCols := 0;
  for i := 0 to Grid.Columns.Count - 1 do
    if Grid.Columns[i].Visible then
      Inc(iVisibleCols);

  if iVisibleCols = 0 then
    Exit;

  // Calculate equal width for each visible column
  iColWidth := Grid.ClientWidth div iVisibleCols;

  // Apply calculated width to each visible column
  for i := 0 to Grid.Columns.Count - 1 do
    if Grid.Columns[i].Visible then
      Grid.Columns[i].Width := iColWidth;

end;

end.
