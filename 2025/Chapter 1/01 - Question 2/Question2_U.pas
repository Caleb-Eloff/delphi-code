unit Question2_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, Math, Jpeg, StdCtrls, Grids, DBGrids, ComCtrls, CheckLst,
  ExtCtrls, Spin;

type
  TfrmQuestion2 = class(TForm)
    dbgTable: TDBGrid;
    btn212: TButton;
    pctHealth: TPageControl;
    tabQ21: TTabSheet;
    btnRestoreDB: TButton;
    tabQ22: TTabSheet;
    radSort211: TRadioGroup;
    btn213: TButton;
    redOutput: TRichEdit;
    dbgData: TDBGrid;
    btn221: TButton;
    btn222: TButton;
    btn223: TButton;
    edtSearch: TEdit;
    edtName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    chkSmoke: TCheckBox;
    edtEmail: TEdit;
    sedWeight: TSpinEdit;
    sedHeight: TSpinEdit;
    edtDate: TEdit;
    cmbGender: TComboBox;
    btn214: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btnRestoreDBClick(Sender: TObject);
    procedure connectDB;
    procedure btn212Click(Sender: TObject);
    procedure radSort211Click(Sender: TObject);
    procedure btn223Click(Sender: TObject);
    procedure btn221Click(Sender: TObject);
    procedure btn213Click(Sender: TObject);
    procedure btn214Click(Sender: TObject);
    procedure btn222Click(Sender: TObject);

  private
    { Private declarations }
  var
    conDB: TADOConnection;
    tblMember: TADOtable;
    qry: TADOQuery;
    dsrTbl: TDataSource;
    dsrSQL: TDataSource;
    SQL: String;

  public
    { Public declarations }
  end;

var
  frmQuestion2: TfrmQuestion2;

implementation

{$R *.dfm}

procedure TfrmQuestion2.radSort211Click(Sender: TObject);
begin // Question 2.1.1

end;

procedure TfrmQuestion2.btn212Click(Sender: TObject);
begin // Question 2.1.2

end;

procedure TfrmQuestion2.btn213Click(Sender: TObject);
begin // Question 2.1.3

end;

procedure TfrmQuestion2.btn214Click(Sender: TObject);
begin  // Question 2.1.4

end;

procedure TfrmQuestion2.btn221Click(Sender: TObject);
begin // Question 2.2.1

end;

procedure TfrmQuestion2.btn222Click(Sender: TObject);
begin // Question 2.2.2

end;

procedure TfrmQuestion2.btn223Click(Sender: TObject);
var
  sFullName, sEmail, sDate: string;
  iHeight, iWeight: integer;
begin
  // Question 2.2.3
  sFullName := edtName.Text;
  sEmail := edtEmail.Text;
  sDate := edtDate.Text;
  iHeight := sedHeight.Value;
  iWeight := sedWeight.Value;

end;

procedure TfrmQuestion2.btnRestoreDBClick(Sender: TObject);
var // Do not change/delete this code!
  bFlag: boolean;
begin
  conDB.Connected := false;
  tblMember.Free();

  DeleteFile('Health.mdb');
  CopyFile('HealthBackup.mdb', 'Health.mdb', bFlag);

  connectDB;

  MessageDlg('Database Restored! ', mtInformation, [mbOK], 0);
end;

procedure TfrmQuestion2.connectDB;
var // Do not change/delete this code!
  sDBName: String;
begin
  conDB := TADOConnection.Create(Self);

  sDBName := 'Health';

  conDB.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + sDBName + '.mdb;' +
    'Mode=ReadWrite;Persist Security Info=False';

  conDB.LoginPrompt := false;
  conDB.Connected := true;

  tblMember := TADOtable.Create(Self);
  tblMember.Connection := conDB;
  // replace TABLE Name
  tblMember.TableName := 'Members';
  tblMember.Active := true;

  qry := TADOQuery.Create(Self);
  qry.Connection := conDB;

  dsrTbl := TDataSource.Create(Self);
  dsrTbl.DataSet := tblMember;

  dbgTable.DataSource := dsrTbl;
  dbgData.DataSource := dsrTbl;
  dsrSQL := TDataSource.Create(Self);
  dsrSQL.DataSet := qry;

end;

Procedure TfrmQuestion2.FormActivate(Sender: TObject);
begin
  connectDB;
end;

end.
