Unit FindFriend;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Buttons, Generics.Collections, FriendClass,
  ComCtrls, Menus;

Type
  TForm1 = Class(TForm)
    btnSaveGuestList: TButton;
    btnSaveList: TButton;
    lbxPotentialGuests: TListBox;
    Label1: TLabel;
    memInvitationList: TMemo;
    Label2: TLabel;
    Panel1: TPanel;
    edtFullName: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    edtCellNumber: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    edtBirthDate: TEdit;
    Label9: TLabel;
    edtLastSeen: TEdit;
    ComboBox1: TComboBox;
    Label10: TLabel;
    Panel3: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    cmbCategory: TComboBox;
    cmbVenue: TComboBox;
    cmbActivity: TComboBox;
    btnPotentialGuests: TButton;
    Image1: TImage;
    btnNewFriend: TSpeedButton;
    Label4: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label15: TLabel;
    edtTime: TEdit;
    Procedure FormCreate(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
  End;

Var
  Form1: TForm1;

Implementation

VAR
  friendslist: Tlist<Tfriend>;
  selectedList: Tlist<Tfriend>;

Const
  tab: Char = #09;
{$R *.dfm}

Procedure TForm1.FormCreate(Sender: TObject);
Var
  filename: String;
  infile: textfile;
  fullName: String;
  cellNumber: String;
  birthDate: TDateTime;
  lastSeen: TDateTime;
  category: String;
  friendCSVlist: TstringList;
  line: String;

Begin
   { disable buttons not in use at startup}
   btnSaveGuestList.Enabled:= false;
   btnSaveList.Enabled:= false;


  { ==================
    create Tlist.
    Read list from csv file
    tsringList to put csv into obj
    add obj to Friends list
    ================== }
  friendslist := Tlist<Tfriend>.Create;
  friendCSVlist := TstringList.Create;
  filename := 'Friends.CSV';
  AssignFile(infile, filename);
  If FileExists(filename) Then
  Begin
    reset(infile);
    friendCSVlist.Delimiter := ',';
    While Not eof(infile) Do
    Begin
      { read a line }
      readln(infile, line);
      friendCSVlist.DelimitedText := line;
      { fill the variables }
      fullName := friendCSVlist[0];
      cellNumber := friendCSVlist[1];
      birthDate := strtoDate(friendCSVlist[2]);
      lastSeen := strtoDate(friendCSVlist[3]);
      category := friendCSVlist[4];
      { Add instatiation of FriendClass to list }

    End;
  End
  Else
    showmessage('file not found ' + filename);
End;



End.
