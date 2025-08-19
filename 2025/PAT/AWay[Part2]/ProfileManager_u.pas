unit ProfileManager_u;

interface

uses
  System.SysUtils, Vcl.Dialogs, Vcl.StdCtrls, dmAccounts_u;

type
  TProfileManager = class
  public
    class procedure LoadProfile(UserID: string; Memo: TMemo);
    class procedure EditProfile(UserID: string; Memo: TMemo);
  end;

implementation

{ TProfileManager }

class procedure TProfileManager.LoadProfile(UserID: string; Memo: TMemo);
var
  sFirstName, sLastName, sEmail, sPassword: string;

begin

  // Load profile details from database using UserID
  with dmAccounts do
  begin

    qryAccounts.Close;
    qryAccounts.SQL.Text :=
      'SELECT Firstname, Lastname, Email, Password FROM tblAccounts WHERE UserID = :UserID';
    qryAccounts.Parameters.ParamByName('UserID').Value := UserID;
    qryAccounts.Open;

    // If user record is found, display details in memo
    if not qryAccounts.Eof then
    begin

      sFirstName := qryAccounts.FieldByName('Firstname').AsString;
      sLastName := qryAccounts.FieldByName('Lastname').AsString;
      sEmail := qryAccounts.FieldByName('Email').AsString;
      sPassword := qryAccounts.FieldByName('Password').AsString;

      Memo.Clear;
      Memo.Lines.Add('Account Details');
      Memo.Lines.Add('------------------------------');
      Memo.Lines.Add('First Name: ' + sFirstName);
      Memo.Lines.Add('Last Name:  ' + sLastName);
      Memo.Lines.Add('Email:      ' + sEmail);
      Memo.Lines.Add('Password:   ' + sPassword);
      Memo.Lines.Add('------------------------------');

    end
    else

      // If no record is found, show fallback message
      Memo.Text := 'No account details found for this user.';

  end;

end;

class procedure TProfileManager.EditProfile(UserID: string; Memo: TMemo);
var
  sNewFirstName, sNewLastName, sNewEmail, sNewPassword: string;

begin

  // Ask user for new profile details
  sNewFirstName := InputBox('Edit First Name', 'Enter new first name:', '');
  sNewLastName := InputBox('Edit Last Name', 'Enter new last name:', '');
  sNewEmail := InputBox('Edit Email', 'Enter new email address:', '');
  sNewPassword := InputBox('Edit Password', 'Enter new password:', '');

  // Validate email format — must contain '@' and end with '.com'
  if (Pos('@', sNewEmail) = 0) or (Pos('.com', LowerCase(sNewEmail)) = 0) then
  begin

    ShowMessage
      ('Invalid email format. Email must contain "@" and end with ".com".');
    Exit;

  end;

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
    qryAccounts.Parameters.ParamByName('uid').Value := UserID;

    qryAccounts.ExecSQL;

  end;

  // Reload updated profile into memo
  LoadProfile(UserID, Memo);

end;

end.
