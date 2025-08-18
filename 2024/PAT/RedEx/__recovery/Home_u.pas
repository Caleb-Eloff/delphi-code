unit Home_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  dmAccounts_u,
  Data.DB, Vcl.Grids, Vcl.DBGrids, SignUp_u, SignIn_u, Vcl.ComCtrls;

type
  TfrmHome = class(TForm)
    pnlTraining: TPanel;
    pnlAdmin: TPanel;
    pnlDiscover: TPanel;
    lblDiscover: TLabel;
    lstUnselected: TListBox;
    lstSelected: TListBox;
    memInformation: TMemo;
    lblUnselected: TLabel;
    lblSelected: TLabel;
    pnlWorkouts: TPanel;
    btnAdd: TButton;
    btnRemove: TButton;
    btnPersonalize: TButton;
    pnlPersonilization: TPanel;
    lblPersonilization: TLabel;
    memPersonalization: TMemo;
    btnEdit: TButton;
    btnDelete: TButton;
    btnCreate: TButton;
    lblTraining: TLabel;
    btnStart: TButton;
    lstSchedule: TListBox;
    memInfo: TMemo;
    lstWorkouts: TListBox;
    btnSave: TButton;
    imgDiscover: TImage;
    imgTraining: TImage;
    btnAdmin: TButton;
    dbgAdmin1: TDBGrid;
    dbgAdmin2: TDBGrid;
    lblAccounts: TLabel;
    lblDetails: TLabel;
    btnAccSearch: TButton;
    btnAccDelete: TButton;
    btnAdminEdit: TButton;
    redOutput: TRichEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnPersonalizeClick(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSave1Click(Sender: TObject);
    procedure lstUnselectedClick(Sender: TObject);
    procedure lstSelectedClick(Sender: TObject);
    procedure lstWorkoutsClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure LoadWorkoutsFromFile;
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure lstScheduleClick(Sender: TObject);
    procedure CheckDateAndReset;
    procedure imgDiscoverClick(Sender: TObject);
    procedure imgTrainingClick(Sender: TObject);
    procedure btnAdminClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgAdmin1CellClick(Column: TColumn);
    procedure dbgAdmin2CellClick(Column: TColumn);
    procedure btnAccSearchClick(Sender: TObject);
    procedure btnAccDeleteClick(Sender: TObject);
    procedure btnAdminEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sCompletion, sWorkoutName: String;
  end;

var
  frmHome: TfrmHome;
  iFile1, iFile2: Integer;

implementation

{$R *.dfm}

uses Training_u;

procedure TfrmHome.btnAccDeleteClick(Sender: TObject);
begin
  // Confirm deletion
  if MessageDlg('Are you sure?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
  begin
    // Delete related records in tblDetails first
    with dmAccounts.tblDetails do
    begin
      First;
      while not Eof do
      begin
        // Check if the UserID matches
        if dmAccounts.tblDetails['UserID'] = dmAccounts.tblAccounts['UserID']
        then
        begin
          dmAccounts.tblDetails.Delete; // Delete the detail record
        end
        else
          Next; // Move to the next record
      end;
    end;
    // Then delete the record in tblAccounts
    dmAccounts.tblAccounts.Delete;
    ShowMessage('Record Deleted.');
  end
  else
  begin
    ShowMessage('Delete cancelled.');
  end;

end;

procedure TfrmHome.btnAccSearchClick(Sender: TObject);
var
  sSearch: String;
  bFound: Boolean;
begin
  redOutput.Clear; // Clear the output
  sSearch := InputBox('RedEx', 'Enter UserID', ''); // Get the UserID for search
  bFound := False;

  dmAccounts.tblAccounts.First;
  while not dmAccounts.tblAccounts.Eof do
  begin
    if dmAccounts.tblAccounts['UserID'] = sSearch then
    begin
      // Display account details in the RichEdit
      redOutput.Lines.Add('UserID: ' + dmAccounts.tblAccounts['UserID']);
      redOutput.Lines.Add('First name: ' + dmAccounts.tblAccounts['FirstName']);
      redOutput.Lines.Add('Last name: ' + dmAccounts.tblAccounts['LastName']);
      redOutput.Lines.Add('Email: ' + dmAccounts.tblAccounts['Email']);
      redOutput.Lines.Add('Password: ' + dmAccounts.tblAccounts['Password']);
      if dmAccounts.tblAccounts['Admin'] = 0 then
        redOutput.Lines.Add('Admin: False')
      else
        redOutput.Lines.Add('Admin: True');
      bFound := True;
    end;
    dmAccounts.tblAccounts.Next;
  end;

  if not bFound then
  begin
    ShowMessage('User not found.');
  end;

end;

procedure TfrmHome.btnAddClick(Sender: TObject);
var
  bFound: Boolean;
  I, iValidity: Integer;
  sWorkout: String;
  FileContents: TStringList;
begin
  bFound := False;
  I := 0;
  iValidity := 0;

  // Validate selection
  if (lstUnselected.ItemIndex < 0) or
    (lstUnselected.ItemIndex >= lstUnselected.Items.Count) then
  begin
    ShowMessage('Invalid selection.');
    Exit;
  end;

  // Check if workout is already selected
  while (I < lstSelected.Items.Count) and not bFound do
  begin
    if lstUnselected.Items[lstUnselected.ItemIndex] = lstSelected.Items[I] then
    begin
      Inc(iValidity);
    end
    else
    begin
      if iValidity > 0 then
      begin
        ShowMessage('Workout already selected!');
        Exit;
      end
      else
      begin
        // Add workout to selected list
        lstSelected.Items.Add(lstUnselected.Items[lstUnselected.ItemIndex]);
        bFound := True;
        sWorkout := '.' + lstUnselected.Items[lstUnselected.ItemIndex];
        FileContents := TStringList.Create;
        try
          if iFile1 > 0 then
            FileContents.LoadFromFile(frmSignUp.sUserID + '.txt')
          else
            FileContents.LoadFromFile(frmSignIn.sUserID + '.txt');
          for I := 0 to FileContents.Count - 1 do
          begin
            if (FileContents[I] = sWorkout) or
              (FileContents[I] = sWorkout[1] + '^' + Copy(sWorkout, 2,
              Length(sWorkout))) then
            begin
              FileContents[I] := sWorkout + ';'; // Mark as selected
              Break;
            end;
          end;
          if iFile1 > 0 then
            FileContents.SaveToFile(frmSignUp.sUserID + '.txt')
          else
            FileContents.SaveToFile(frmSignIn.sUserID + '.txt');
        finally
          FileContents.Free;
        end;
        lstUnselected.DeleteSelected; // Remove from unselected list
      end;
    end;
    Inc(I);
  end;

  // Add workout if not found in selected list
  if not bFound and (iValidity = 0) then
  begin
    lstSelected.Items.Add(lstUnselected.Items[lstUnselected.ItemIndex]);
    sWorkout := '.' + lstUnselected.Items[lstUnselected.ItemIndex];
    FileContents := TStringList.Create;
    try
      if iFile1 > 0 then
        FileContents.LoadFromFile(frmSignUp.sUserID + '.txt')
      else
        FileContents.LoadFromFile(frmSignIn.sUserID + '.txt');
      for I := 0 to FileContents.Count - 1 do
      begin
        if (FileContents[I] = sWorkout) or
          (FileContents[I] = sWorkout[1] + '^' + Copy(sWorkout, 2,
          Length(sWorkout))) then
        begin
          FileContents[I] := sWorkout + ';'; // Mark as selected
          Break;
        end;
      end;
      if iFile1 > 0 then
        FileContents.SaveToFile(frmSignUp.sUserID + '.txt')
      else
        FileContents.SaveToFile(frmSignIn.sUserID + '.txt');
    finally
      FileContents.Free;
    end;
    lstUnselected.DeleteSelected; // Remove from unselected list
  end;

end;

procedure TfrmHome.btnAdminClick(Sender: TObject);
begin
  // Hide other panels and show the admin panel
  pnlTraining.Hide;
  pnlDiscover.Hide;
  pnlAdmin.Show;

end;

procedure TfrmHome.btnAdminEditClick(Sender: TObject);
var
  sFirstName, sLastName, sEmail, sPassword: String;

begin

  // Check if user is selected
  if dmAccounts.tblAccounts.IsEmpty then
  begin
    ShowMessage('No user selected.');
    Exit;
  end;

  // Load selected user details into the edit form
  sFirstName := InputBox('Edit User', 'First Name:', '');
  sLastName := InputBox('Edit User', 'Last Name:', '');
  sEmail := InputBox('Edit User', 'Email:', '');
  sPassword := InputBox('Edit User', 'Password:', '');

  // Update the database with the new details
  with dmAccounts.tblAccounts do
  begin

    Edit;
    FieldByName('FirstName').AsString := sFirstName;
    FieldByName('LastName').AsString := sLastName;
    FieldByName('Email').AsString := sEmail;
    FieldByName('Password').AsString := sPassword;
    Post;

  end;

  ShowMessage('User details updated successfully.');

end;

procedure TfrmHome.btnCreateClick(Sender: TObject);
var
  ExFile: TextFile;
  sName, sExercise: String;
  I, iReps, iAmount: Integer;
  arrExercises, arrReps: Array of String;
  FileContents: TStringList;

begin
  // Validate group name
  sName := InputBox('RedEx', 'Exercise group name: ', '');
  if sName = '' then
  begin
    ShowMessage('Exercise group name cannot be empty.');
    Exit;
  end;

  // Validate amount of exercises
  iAmount := StrToInt(InputBox('RedEx', 'Amount of exercises', ''));
  if (IntToStr(iAmount) = '') OR (iAmount <= 0) then
  begin
    ShowMessage('Amount must be a positive number.');
    Exit;
  end;

  SetLength(arrExercises, iAmount);
  SetLength(arrReps, iAmount);

  // Validate exercises and reps
  for I := 0 to iAmount - 1 do
  begin
    sExercise := InputBox('RedEx', 'Exercise name: ', '');
    if sExercise = '' then
    begin
      ShowMessage('Exercise name cannot be empty.');
      Exit;
    end;
    arrExercises[I] := sExercise;

    iReps := StrToInt(InputBox('RedEx', 'Number of reps: ', ''));
    if (IntToStr(iReps) = '') OR (iReps <= 0) then
    begin
      ShowMessage('Number of reps must be a positive number.');
      Exit;
    end;
    arrReps[I] := IntToStr(iReps);
  end;

  // Check for existing group name in the file
  FileContents := TStringList.Create;
  if iFile1 > 0 then
    FileContents.LoadFromFile(frmSignUp.sUserID + '.txt')
  else if iFile2 > 0 then
    FileContents.LoadFromFile(frmSignIn.sUserID + '.txt');

  if FileContents.IndexOf('.' + sName) <> -1 then
  begin
    ShowMessage('Group name already exists.');
    FileContents.Free;
    Exit;
  end;

  // Append exercises to the file
  if iFile1 > 0 then
    AssignFile(ExFile, frmSignUp.sUserID + '.txt')
  else
    AssignFile(ExFile, frmSignIn.sUserID + '.txt');

  if not FileExists(frmSignUp.sUserID + '.txt') then
    Rewrite(ExFile)
  else
    Append(ExFile);

  WriteLn(ExFile, '.' + sName);
  for I := 0 to iAmount - 1 do
    WriteLn(ExFile, ',' + arrExercises[I] + '*' + arrReps[I]);

  CloseFile(ExFile);
  FileContents.Free;
  lstWorkouts.Items.Add(sName);

end;

procedure TfrmHome.btnDeleteClick(Sender: TObject);
var
  sName, sWorkout: String;
  I: Integer;
  FileContents, NewFileContents: TStringList;

begin

  if lstWorkouts.ItemIndex = -1 then
  begin
    ShowMessage('Please select a workout to delete.');
    Exit;
  end;

  // Get the selected workout name
  sName := lstWorkouts.Items[lstWorkouts.ItemIndex];
  FileContents := TStringList.Create;
  NewFileContents := TStringList.Create;
  try
    // Load file contents
    if iFile1 > 0 then
      FileContents.LoadFromFile(frmSignUp.sUserID + '.txt')
    else if iFile2 > 0 then
      FileContents.LoadFromFile(frmSignIn.sUserID + '.txt');

    I := 0;
    while I < FileContents.Count do
    begin
      sWorkout := FileContents[I];

      // Skip the selected workout and its exercises
      if (sWorkout = '.' + sName) or (sWorkout = '.' + sName + ';') or
        (sWorkout = '.' + '^' + Copy(sName, 3, Length(sName))) then
      begin
        Inc(I);
        while (I < FileContents.Count) and (FileContents[I][1] = ',') do
          Inc(I);
      end
      else
      begin
        NewFileContents.Add(sWorkout);
        Inc(I);
      end;
    end;

    // Save the new contents back to the file
    if iFile1 > 0 then
      NewFileContents.SaveToFile(frmSignUp.sUserID + '.txt')
    else
      NewFileContents.SaveToFile(frmSignIn.sUserID + '.txt');
  finally
    FileContents.Free;
    NewFileContents.Free;
  end;

  // Remove the workout from the list
  lstWorkouts.Items.Delete(lstWorkouts.ItemIndex);
  lstUnselected.Clear;
  lstSelected.Clear;
  lstWorkouts.Clear;
  lstSchedule.Clear;
  LoadWorkoutsFromFile;

end;

procedure TfrmHome.btnEditClick(Sender: TObject);
var
  sName, sExercise, sNew, sWorkout: String;
  iAmount, iReps, I: Integer;
  arrExercises, arrReps: Array of String;
  FileContents, NewFileContents: TStringList;

begin
  // Check if a workout is selected
  if lstWorkouts.ItemIndex = -1 then
  begin
    ShowMessage('Please select a workout to edit.');
    Exit;
  end;

  // Get the selected workout name
  sName := lstWorkouts.Items[lstWorkouts.ItemIndex];

  // Ask for the number of exercises
  iAmount := StrToInt(InputBox('RedEx', 'Amount of exercises', ''));
  if (IntToStr(iAmount) = '') or (iAmount <= 0) then
  begin
    ShowMessage('Amount must be a positive number.');
    Exit;
  end;

  // Set arrays for exercises and reps
  SetLength(arrExercises, iAmount);
  SetLength(arrReps, iAmount);

  // Ask for each exercise name and reps
  for I := 0 to iAmount - 1 do
  begin
    sExercise := InputBox('RedEx', 'Exercise name: ', '');
    if sExercise = '' then
    begin
      ShowMessage('Exercise name cannot be empty.');
      Exit;
    end;

    arrExercises[I] := sExercise;

    iReps := StrToInt(InputBox('RedEx', 'Number of reps: ', ''));
    if (IntToStr(iReps) = '') or (iReps <= 0) then
    begin
      ShowMessage('Number of reps must be a positive number.');
      Exit;
    end;
    arrReps[I] := IntToStr(iReps);
  end;

  // Create new workout string
  sNew := '.' + sName;
  for I := 0 to iAmount - 1 do
  begin
    sNew := sNew + sLineBreak + ',' + arrExercises[I] + '*' + arrReps[I];
  end;

  // Set file contents
  FileContents := TStringList.Create;
  NewFileContents := TStringList.Create;
  try
    // Load the user's file
    if iFile1 > 0 then
      FileContents.LoadFromFile(frmSignUp.sUserID + '.txt')
    else if iFile2 > 0 then
      FileContents.LoadFromFile(frmSignIn.sUserID + '.txt');

    I := 0;
    while I < FileContents.Count do
    begin
      sWorkout := FileContents[I];
      // Check if the workout matches the selected workout
      if (sWorkout = '.' + sName) or (sWorkout = '.' + sName + ';') or
        (sWorkout = '.^' + sName + ';') then
      begin
        NewFileContents.Add(sNew);
        // Add the new workout
        Inc(I);
        // Skip the current workout's exercises
        while (I < FileContents.Count) and (FileContents[I][1] <> '.') do
          Inc(I);
      end
      else
      begin
        NewFileContents.Add(sWorkout); // Keep other workouts
        Inc(I);
      end;
    end;

    // Save the updated contents back to the file
    if iFile1 > 0 then
    begin
      NewFileContents.SaveToFile(frmSignUp.sUserID + '.txt')
    end
    else if iFile2 > 0 then
    begin
      NewFileContents.SaveToFile(frmSignIn.sUserID + '.txt');
    end;
  finally

    FileContents.Free;
    NewFileContents.Free;

  end;

  // Refresh the workout lists
  lstUnselected.Clear;
  lstSelected.Clear;
  lstWorkouts.Clear;
  lstSchedule.Clear;
  LoadWorkoutsFromFile;

end;

procedure TfrmHome.btnPersonalizeClick(Sender: TObject);
begin
  // Clear the information and personalization memos
  memInformation.Clear;
  memPersonalization.Clear;
  // Hide the workouts panel and show the personalization panel
  pnlWorkouts.Hide;
  pnlPersonilization.Show;

end;

procedure TfrmHome.btnRemoveClick(Sender: TObject);
var
  sWorkout: String;
  FileContents: TStringList;
  I: Integer;

begin
  // Check if any item is selected in the list
  if lstSelected.ItemIndex < 0 then
  begin
    ShowMessage('Invalid selection.');
    Exit;
  end;

  // Get the selected workout
  sWorkout := '.' + lstSelected.Items[lstSelected.ItemIndex] + ';';
  FileContents := TStringList.Create;
  try
    // Load the appropriate file
    if iFile1 > 0 then
      FileContents.LoadFromFile(frmSignUp.sUserID + '.txt')
    else if iFile2 > 0 then
      FileContents.LoadFromFile(frmSignIn.sUserID + '.txt');

    // Find and edit the workout entry in the file
    for I := 0 to FileContents.Count - 1 do
    begin
      if (FileContents[I] = sWorkout) or
        (FileContents[I] = sWorkout[1] + '^' + Copy(sWorkout, 2,
        Length(sWorkout))) then
      begin
        // Remove the delimitter
        FileContents[I] := Copy(FileContents[I], 1,
          Length(FileContents[I]) - 1);
        Break;
      end;
    end;

    // Save the updated file
    if iFile1 > 0 then
    begin
      FileContents.SaveToFile(frmSignUp.sUserID + '.txt')
    end
    else
    begin
      FileContents.SaveToFile(frmSignIn.sUserID + '.txt');
    end;
  finally
    FileContents.Free;
    // Move the workout back to the unselected list
    lstUnselected.Items.Add(lstSelected.Items[lstSelected.ItemIndex]);
    lstSelected.Items.Delete(lstSelected.ItemIndex);
  end;

end;

procedure TfrmHome.btnSave1Click(Sender: TObject);
begin
  // Hide the discover panel and show the training panel
  pnlDiscover.Hide;
  pnlTraining.Show;

end;

procedure TfrmHome.btnSaveClick(Sender: TObject);
begin
  // Clear the memos and lists
  memInformation.Clear;
  memPersonalization.Clear;
  lstUnselected.Clear;
  lstSelected.Clear;
  lstWorkouts.Clear;
  lstSchedule.Clear;

  // Reload the workouts from file
  LoadWorkoutsFromFile;

  // Hide the personalization panel and show the workouts panel
  pnlPersonilization.Hide;
  pnlWorkouts.Show;

end;

procedure TfrmHome.btnStartClick(Sender: TObject);
begin
  // Check if the workout is already completed
  if frmHome.sCompletion = 'Completed' then
  begin
    ShowMessage('This workout is already completed.');
    Exit;
  end
  // Check if any workout is selected
  else if lstSchedule.ItemIndex = -1 then
  begin
    ShowMessage('Please select a workout to start.');
    Exit;
  end
  else
  begin
    // Start the selected workout
    sWorkoutName := lstSchedule.Items[lstSchedule.ItemIndex];
    frmHome.Hide;
    frmTraining.Left := frmHome.Left;
    frmTraining.Top := frmHome.Top;
    frmTraining.Show;
  end;

end;

procedure TfrmHome.CheckDateAndReset;
var
  ExFile: TextFile;
  FileContents: TStringList;
  sLine, sCurrentDay, sLastDay: String;
  I: Integer;

begin
  FileContents := TStringList.Create;
  try
    // Load the last saved day
    if FileExists('LastDay.txt') then
    begin
      FileContents.LoadFromFile('LastDay.txt');
      sLastDay := FileContents[0];
    end
    else
    begin
      sLastDay := '';
    end;

    // Get the current day
    sCurrentDay := FormatDateTime('dddd', Now);

    // Compare the dates
    if sCurrentDay <> sLastDay then
    begin
      sCompletion := 'Incomplete';

      // Load workouts file
      FileContents.Clear;
      if iFile1 > 0 then
      begin
        FileContents.LoadFromFile(frmSignUp.sUserID + '.txt')
      end
      else if iFile2 > 0 then
      begin
        FileContents.LoadFromFile(frmSignIn.sUserID + '.txt');
      end;

      // Remove the `^` from completed workouts
      for I := 0 to FileContents.Count - 1 do
      begin
        sLine := FileContents[I];
        if Pos('^. ', sLine) > 0 then
        begin
          FileContents[I] := StringReplace(sLine, '^', '', []);
        end;
      end;

      // Save the updated workouts file
      if iFile1 > 0 then
        FileContents.SaveToFile(frmSignUp.sUserID + '.txt')
      else if iFile2 > 0 then
        FileContents.SaveToFile(frmSignIn.sUserID + '.txt');

      // Save the current day
      FileContents.Clear;
      FileContents.Add(sCurrentDay);
      FileContents.SaveToFile('LastDay.txt');

    end;
  finally
    FileContents.Free;
  end;

end;

procedure TfrmHome.dbgAdmin1CellClick(Column: TColumn);
var
  sID: String;
begin
  // Get the UserID from the selected record in tblAccounts
  sID := dmAccounts.tblAccounts['UserID'];
  dmAccounts.tblDetails.First;
  // Find the matching UserID in tblDetails
  while not dmAccounts.tblDetails.Eof do
  begin
    if dmAccounts.tblDetails['UserID'] = sID then
    begin
      Break; // Stop when a match is found
    end;
    dmAccounts.tblDetails.Next;
  end;

end;

procedure TfrmHome.dbgAdmin2CellClick(Column: TColumn);
var
  sID: String;
begin
  // Get the UserID from the selected record in tblDetails
  sID := dmAccounts.tblDetails['UserID'];
  dmAccounts.tblAccounts.First;
  // Find the matching UserID in tblAccounts
  while not dmAccounts.tblAccounts.Eof do
  begin
    if dmAccounts.tblAccounts['UserID'] = sID then
    begin
      Break; // Stop when a match is found
    end;
    dmAccounts.tblAccounts.Next;
  end;

end;

procedure TfrmHome.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Application.Terminate; // Close the application

end;

procedure TfrmHome.FormCreate(Sender: TObject);
begin
  // Set the data sources for the data grids
  dbgAdmin1.DataSource := dmAccounts.dscAccounts;
  dbgAdmin2.DataSource := dmAccounts.dscDetails;

  // Show discover panel
  pnlTraining.Hide;
  pnlDiscover.Show;

end;

procedure TfrmHome.FormShow(Sender: TObject);
var
  sWorkout: String;
  ExFile: TextFile;

begin
  // Show or hide the admin button based on user role
  if frmSignIn.bAdmin = True then
  begin
    btnAdmin.Show
  end
  else
  begin
    btnAdmin.Hide;
  end;

  // Load images for discover and training
  imgDiscover.Picture.LoadFromFile('Discover.jpg');
  imgTraining.Picture.LoadFromFile('Training.jpg');

  // Reset date and load workouts
  CheckDateAndReset;
  lstUnselected.Clear;
  lstSelected.Clear;
  lstWorkouts.Clear;
  lstSchedule.Clear;
  LoadWorkoutsFromFile;

end;

procedure TfrmHome.imgDiscoverClick(Sender: TObject);
begin
  // Clear lists and load workouts, then show discover panel
  lstUnselected.Clear;
  lstSelected.Clear;
  lstSchedule.Clear;
  lstWorkouts.Clear;
  LoadWorkoutsFromFile;
  pnlTraining.Hide;
  pnlDiscover.Show;

end;

procedure TfrmHome.imgTrainingClick(Sender: TObject);
begin
  // Clear lists and load workouts, then show training panel
  lstUnselected.Clear;
  lstSelected.Clear;
  lstSchedule.Clear;
  lstWorkouts.Clear;
  LoadWorkoutsFromFile;
  pnlDiscover.Hide;
  pnlTraining.Show;

end;

procedure TfrmHome.LoadWorkoutsFromFile;
var
  sWorkout: String;
  ExFile: TextFile;

begin

  iFile1 := 0;
  iFile2 := 0;
  // Check if the user's file exists and open it
  if FileExists(frmSignUp.sUserID + '.txt') then
  begin
    Inc(iFile1);
    AssignFile(ExFile, frmSignUp.sUserID + '.txt');
    Reset(ExFile);
  end
  else if FileExists(frmSignIn.sUserID + '.txt') then
  begin
    Inc(iFile2);
    AssignFile(ExFile, frmSignIn.sUserID + '.txt');
    Reset(ExFile);
  end
  else
  begin
    ShowMessage('Critical error! App might not function as intended.');
    Exit;
  end;

  try
    // Read each line in the file
    while not Eof(ExFile) do
    begin
      ReadLn(ExFile, sWorkout);
      if (sWorkout[2]) = '^' then
      begin
        // Read completed workouts
        Delete(sWorkout, 1, 2);
        Delete(sWorkout, Length(sWorkout), 1);
        lstSelected.Items.Add(sWorkout);
        lstWorkouts.Items.Add(sWorkout);
        lstSchedule.Items.Add(sWorkout);
      end
      else if (sWorkout[1] = '.') and (sWorkout[Length(sWorkout)] = ';') then
      begin
        // Read selected workouts
        Delete(sWorkout, 1, 1);
        Delete(sWorkout, Length(sWorkout), 1);
        lstSelected.Items.Add(sWorkout);
        lstWorkouts.Items.Add(sWorkout);
        lstSchedule.Items.Add(sWorkout);
      end
      else if (sWorkout[1] = '.') and not(sWorkout[Length(sWorkout)] = ';') then
      begin
        // Read unselected workouts
        Delete(sWorkout, 1, 1);
        lstUnselected.Items.Add(sWorkout);
        lstWorkouts.Items.Add(sWorkout);
      end;
    end;
  finally
    CloseFile(ExFile);
    // Close file
  end;

end;

procedure TfrmHome.lstScheduleClick(Sender: TObject);
var
  ExFile: TextFile;
  sLine, sScheduleItem, sName, sReps, sCurrentDay: String;
  bFound: Boolean;
  iPos: Integer;

begin

  // Don't display error if nothing selected
  if lstSchedule.ItemIndex = -1 then
  begin
    Exit;
  end;

  memInfo.Clear; // Clear the information memo

  // Get the selected schedule item
  sScheduleItem := lstSchedule.Items[lstSchedule.ItemIndex];

  // Load details from the appropriate file
  if iFile1 > 0 then
  begin
    AssignFile(ExFile, frmSignUp.sUserID + '.txt')
  end
  else if iFile2 > 0 then
  begin
    AssignFile(ExFile, frmSignIn.sUserID + '.txt')
  end
  else
  begin
    Exit;
  end;

  Reset(ExFile);
  memInfo.Lines.Add('Exercises (and no. reps):');
  bFound := False;

  try
    while not Eof(ExFile) do
    begin
      ReadLn(ExFile, sLine);

      // Check for the selected workout start
      if ('.^' + sScheduleItem) = Copy(sLine, 1, Length(sScheduleItem) + 2) then
      begin
        frmHome.sCompletion := 'Completed';
        bFound := True;
        Continue;
      end
      else if ('.' + sScheduleItem) = Copy(sLine, 1, Length(sScheduleItem) + 1)
      then
      begin
        frmHome.sCompletion := 'Incomplete';
        bFound := True;
        Continue;
      end;

      // Add exercises to memInfo
      if bFound then
      begin
        if sLine[1] = ',' then
        begin
          iPos := Pos('*', sLine);
          if iPos > 0 then
          begin
            sName := Copy(sLine, 2, iPos - 2);
            sReps := Copy(sLine, iPos + 1, Length(sLine) - iPos);
            memInfo.Lines.Add(sName + ': ' + #9 + sReps);
          end;
        end
        // Stop when next workout is found
        else if sLine[1] = '.' then
        begin
          Break;
        end;

      end;

    end;

  finally
    CloseFile(ExFile);
  end;

  memInfo.Lines.Add('');
  sCurrentDay := FormatDateTime('dddd', Now);
  memInfo.Lines.Add('Date: ' + sCurrentDay);
  memInfo.Lines.Add('Completion: ' + sCompletion);

end;

procedure TfrmHome.lstSelectedClick(Sender: TObject);
var
  ExFile: TextFile;
  sExercise, sName, sReps: String;
  iValidity, iPos: Integer;

begin

  lstUnselected.ClearSelection; // Clear the unselected list selection
  iValidity := 0;
  memInformation.Clear; // Clear the information memo

  // Check if an item is selected
  if lstSelected.ItemIndex = -1 then
  begin
    Exit;
  end;

  // Load details from the appropriate file
  if iFile1 > 0 then
  begin
    AssignFile(ExFile, frmSignUp.sUserID + '.txt');
  end
  else if iFile2 > 0 then
  begin
    AssignFile(ExFile, frmSignIn.sUserID + '.txt');
  end
  else
  begin
    Exit;
  end;

  Reset(ExFile);

  try
    while not Eof(ExFile) do
    begin
      ReadLn(ExFile, sExercise);

      // Check for both the workout name and workout name with caret
      if ((Copy(sExercise, 2, Length(sExercise) - 1) = lstSelected.Items
        [lstSelected.ItemIndex] + ';') or
        (Copy(sExercise, 3, Length(sExercise) - 2) = lstSelected.Items
        [lstSelected.ItemIndex] + ';')) then
      begin
        Inc(iValidity);
        Continue;
      end;

      // Add exercises to memInformation
      if (iValidity = 1) and (sExercise[1] = ',') then
      begin
        iPos := Pos('*', sExercise);
        sName := Copy(sExercise, 2, iPos - 2);
        sReps := Copy(sExercise, iPos + 1, Length(sExercise) - iPos);
        memInformation.Lines.Add(sName + ': ' + #9 + sReps);
      end;

      // Stop when next workout is found
      if (sExercise[1] = '.') and (iValidity = 1) then
      begin
        Break;
      end;
    end;
  finally
    CloseFile(ExFile);
  end;

end;

procedure TfrmHome.lstUnselectedClick(Sender: TObject);
var
  ExFile: TextFile;
  sExercise, sName, sReps: String;
  iValidity, iPos: Integer;

begin

  lstSelected.ClearSelection; // Clear the selection in the selected list
  iValidity := 0;
  memInformation.Clear; // Clear the information memo

  // Check if an item is selected
  if lstUnselected.ItemIndex = -1 then
  begin
    Exit;
  end;

  // Load details from the appropriate file
  if iFile1 > 0 then
  begin
    AssignFile(ExFile, frmSignUp.sUserID + '.txt');
  end
  else if iFile2 > 0 then
  begin
    AssignFile(ExFile, frmSignIn.sUserID + '.txt');
  end
  else
  begin
    Exit;
  end;

  Reset(ExFile);

  try
    while not Eof(ExFile) do
    begin
      ReadLn(ExFile, sExercise);

      // Check for both the workout name and workout name with caret
      if ((Copy(sExercise, 2, Length(sExercise) - 1) = lstUnselected.Items
        [lstUnselected.ItemIndex]) or (Copy(sExercise, 3, Length(sExercise) - 2)
        = lstUnselected.Items[lstUnselected.ItemIndex])) then
      begin
        Inc(iValidity);
        Continue;
      end;

      // Add exercises to memInformation
      if (iValidity = 1) and (sExercise[1] = ',') then
      begin
        iPos := Pos('*', sExercise);
        sName := Copy(sExercise, 2, iPos - 2);
        sReps := Copy(sExercise, iPos + 1, Length(sExercise) - iPos);
        memInformation.Lines.Add(sName + ': ' + #9 + sReps);
      end;

      // Stop when next workout is found
      if (sExercise[1] = '.') and (iValidity = 1) then
      begin
        Break;
      end;
    end;
  finally
    CloseFile(ExFile);
  end;
end;

procedure TfrmHome.lstWorkoutsClick(Sender: TObject);
var
  ExFile: TextFile;
  sExercise, sName, sReps: String;
  iPos: Integer;
  bFound: Boolean;

begin

  memPersonalization.Clear; // Clear the personalization memo

  // Check if an item is selected
  if lstWorkouts.ItemIndex = -1 then
  begin
    Exit;
  end;

  // Load details from the appropriate file
  if iFile1 > 0 then
  begin
    AssignFile(ExFile, frmSignUp.sUserID + '.txt');
  end
  else if iFile2 > 0 then
  begin
    AssignFile(ExFile, frmSignIn.sUserID + '.txt');
  end
  else
  begin
    Exit;
  end;

  Reset(ExFile);
  bFound := False;

  try
    while not Eof(ExFile) do
    begin

      ReadLn(ExFile, sExercise);

      // Check for the selected workout start
      if ('.' + lstWorkouts.Items[lstWorkouts.ItemIndex] + ';') = sExercise then
      begin
        bFound := True;
        Continue;
      end
      else if ('.' + lstWorkouts.Items[lstWorkouts.ItemIndex]) = sExercise then
      begin
        bFound := True;
        Continue;
      end
      else if ('.^' + lstWorkouts.Items[lstWorkouts.ItemIndex] + ';') = sExercise
      then
      begin
        bFound := True;
        Continue;
      end;

      // Add exercises to memPersonalization
      if bFound then
      begin
        if sExercise[1] = ',' then
        begin
          iPos := Pos('*', sExercise);
          if iPos > 0 then
          begin
            sName := Copy(sExercise, 2, iPos - 2);
            sReps := Copy(sExercise, iPos + 1, Length(sExercise) - iPos);
            memPersonalization.Lines.Add(sName + ': ' + #9 + sReps);
          end;
        end
        // Stop when next workout is found
        else if sExercise[1] = '.' then
        begin
          Break;
        end;

      end;

    end;
  finally
    CloseFile(ExFile);
  end;

end;

end.
