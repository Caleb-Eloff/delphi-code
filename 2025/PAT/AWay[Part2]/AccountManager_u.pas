unit AccountManager_u;

interface

uses
  System.SysUtils, System.Classes, Vcl.Dialogs, Math, dmAccounts_u;

type
  TAccountManager = class
  public
    class procedure CreateAccount;
    class procedure UpdateAccount;
    class procedure RemoveAccount;
    class procedure RefreshAccountGrid;
  end;

implementation

uses Vcl.Forms, Vcl.Controls, Vcl.Grids, Vcl.DBGrids;

{ TAccountManager }

class procedure TAccountManager.CreateAccount;
var
  sFirstName, sLastName, sEmail, sPassword, sUserID: string;
  bIsAdmin, bAccountFound: Boolean;

begin

  // Prompt admin for new user details
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

  // Ask if the new user should be an admin
  bIsAdmin := MessageDlg('Should this user be an admin?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes;

  // Check if email already exists in the database
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

  // Refresh the grid to show the new account
  RefreshAccountGrid;

end;

class procedure TAccountManager.UpdateAccount;
var
  sNewFirstName, sNewLastName, sNewEmail, sNewPassword: string;
  bIsAdmin: Boolean;

begin

  // Ensure there is a selected user to update
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
    [mbYes, mbNo], 0) = mrYes;

  // Basic email format validation
  // Must contain '@' and end with '.com'
  if (Pos('@', sNewEmail) = 0) or (Pos('.com', LowerCase(sNewEmail)) = 0) then
  begin
    ShowMessage
      ('Invalid email format. Email must contain "@" and end with ".com".');
    Exit;
  end;

  // Apply the updates to the selected record
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

  // Refresh the grid to reflect changes
  RefreshAccountGrid;

end;

class procedure TAccountManager.RemoveAccount;
var
  sSelectedUserID: string;

begin

  // Ensure there is a user to remove
  if dmAccounts.tblAccounts.IsEmpty then
  begin
    ShowMessage('No users in the database.');
    Exit;
  end;

  // Get the UserID of the selected user
  sSelectedUserID := dmAccounts.tblAccounts.FieldByName('UserID').AsString;

  // Confirm deletion
  if MessageDlg
    ('Are you sure you want to delete this user and all their flights?',
    mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
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

  // Refresh the grid to reflect removal
  RefreshAccountGrid;

end;

class procedure TAccountManager.RefreshAccountGrid;
begin

  // Reload the account query to update the grid
  with dmAccounts.qryAccounts do
  begin
    Close;
    SQL.Text := 'SELECT * FROM tblAccounts ORDER BY FirstName, LastName';
    Open;
  end;

end;

end.
