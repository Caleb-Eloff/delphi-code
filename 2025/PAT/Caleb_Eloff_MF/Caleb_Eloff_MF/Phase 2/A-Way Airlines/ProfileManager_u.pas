unit ProfileManager_u;

interface

uses
  Vcl.Dialogs, System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls,
  Vcl.ComCtrls,
  dmAccounts_u;

type
  TProfileManager = class
  public
    class procedure LoadProfile(sUserID: String; RichEdit: TRichEdit);
    // Loads profile into RichEdit
    class procedure EditProfile(sUserID: String; RichEdit: TRichEdit);
    // Prompts user to edit profile
  private
    class function ValidateName(const sName: String; const sFieldLabel: String)
      : Boolean; // Checks name is non-empty and alphabetic
    class function ValidateEmail(const sEmail: String): Boolean;
    // Checks email format
    class function ValidatePassword(const sPassword: String): Boolean;
    // Checks password is non-empty
  end;

implementation

class procedure TProfileManager.LoadProfile(sUserID: String;
  RichEdit: TRichEdit);
var
  sFirstName, sLastName, sEmail, sPassword: String;

begin

  // Query database for profile details using UserID
  with dmAccounts do
  begin

    qryAccounts.Close;
    qryAccounts.SQL.Text :=
      'SELECT Firstname, Lastname, Email, Password FROM tblAccounts WHERE UserID = :UserID';
    qryAccounts.Parameters.ParamByName('UserID').Value := sUserID;
    qryAccounts.Open;

    RichEdit.Clear;

    // If user record is found, format and display it
    if not qryAccounts.Eof then
    begin

      sFirstName := qryAccounts.FieldByName('Firstname').AsString;
      sLastName := qryAccounts.FieldByName('Lastname').AsString;
      sEmail := qryAccounts.FieldByName('Email').AsString;
      sPassword := qryAccounts.FieldByName('Password').AsString;

      // Set tab spacing for alignment
      with RichEdit.Paragraph do
      begin

        TabCount := 1;
        Tab[0] := 200;

      end;

      RichEdit.Lines.Add('');

      // Add styled header
      RichEdit.SelAttributes.Size := 13;
      RichEdit.Lines.Add('USER PROFILE REPORT');
      RichEdit.SelAttributes.Size := 10;

      RichEdit.Lines.Add('');
      RichEdit.Lines.Add
        ('─────────────────────────────────────────────────────────────────────────────');
      RichEdit.Lines.Add('');

      RichEdit.Lines.Add('Account Information');
      RichEdit.Lines.Add('');

      RichEdit.Lines.Add
        ('──────────────────────────────────────────────────────────────────────────────────────────');

      RichEdit.Lines.Add('');
      RichEdit.Lines.Add('First Name:' + #9 + sFirstName);
      RichEdit.Lines.Add('Last Name:' + #9 + sLastName);
      RichEdit.Lines.Add('Email:' + #9 + sEmail);
      RichEdit.Lines.Add('Password:' + #9 + sPassword);

      RichEdit.Lines.Add('');
      RichEdit.Lines.Add
        ('──────────────────────────────────────────────────────────────────────────────────────────');
      RichEdit.Lines.Add('');

    end
    else
    begin

      // If no record is found, show fallback message
      RichEdit.SelAttributes.Size := 12;
      RichEdit.Text := 'No account details found for this user.';

    end;
  end;
end;

class procedure TProfileManager.EditProfile(sUserID: String;
  RichEdit: TRichEdit);
var
  sNewFirstName, sNewLastName, sNewEmail, sNewPassword: String;

begin

  // Prompt user for new profile details
  sNewFirstName := InputBox('Edit First Name', 'Enter new first name:', '');
  sNewLastName := InputBox('Edit Last Name', 'Enter new last name:', '');
  sNewEmail := InputBox('Edit Email', 'Enter new email address:', '');
  sNewPassword := InputBox('Edit Password', 'Enter new password:', '');

  // Validate each input using helper methods
  if not ValidateName(sNewFirstName, 'First name') then
    Exit;
  if not ValidateName(sNewLastName, 'Last name') then
    Exit;
  if not ValidateEmail(sNewEmail) then
    Exit;
  if not ValidatePassword(sNewPassword) then
    Exit;

  // Update profile in database using parameterized query
  with dmAccounts do
  begin

    qryAccounts.Close;
    qryAccounts.SQL.Text := 'UPDATE tblAccounts SET ' +
      '[Firstname] = :fn, [Lastname] = :ln, [Email] = :em, [Password] = :pw ' +
      'WHERE [UserID] = :uid';

    qryAccounts.Parameters.ParamByName('fn').Value := sNewFirstName;
    qryAccounts.Parameters.ParamByName('ln').Value := sNewLastName;
    qryAccounts.Parameters.ParamByName('em').Value := sNewEmail;
    qryAccounts.Parameters.ParamByName('pw').Value := sNewPassword;
    qryAccounts.Parameters.ParamByName('uid').Value := sUserID;

    qryAccounts.ExecSQL;

  end;

  // Reload updated profile into RichEdit
  LoadProfile(sUserID, RichEdit);

end;

class function TProfileManager.ValidateName(const sName: String;
  const sFieldLabel: String): Boolean;
var
  i: Integer;
begin

  // Check if name is empty or just spaces
  if Trim(sName) = '' then
  begin

    ShowMessage(sFieldLabel + ' cannot be empty or just spaces.');
    Exit(False);

  end;

  // Check if name contains only letters
  for i := 1 to Length(sName) do
    if not(sName[i] in ['A' .. 'Z', 'a' .. 'z']) then
    begin

      ShowMessage(sFieldLabel + ' must contain only letters.');
      Exit(False);

    end;

  Result := True;

end;

class function TProfileManager.ValidateEmail(const sEmail: String): Boolean;
begin

  // Basic email format check
  if (Pos('@', sEmail) = 0) or (Pos('.com', LowerCase(sEmail)) = 0) then
  begin

    ShowMessage('Invalid email format. Must contain "@" and end with ".com".');
    Exit(False);

  end;

  Result := True;

end;

class function TProfileManager.ValidatePassword(const sPassword
  : String): Boolean;
begin

  // Check if password is empty or just spaces
  if Trim(sPassword) = '' then
  begin

    ShowMessage('Password cannot be empty or just spaces.');
    Exit(False);

  end;

  Result := True;

end;

end.
