unit TrafficViolations_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Violations_d;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    dbgOwners: TDBGrid;
    btn31: TButton;
    btn32: TButton;
    btn33: TButton;
    btn34: TButton;
    btn35: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn31Click(Sender: TObject);
    procedure btn32Click(Sender: TObject);
    procedure btn33Click(Sender: TObject);
    procedure btn34Click(Sender: TObject);
    procedure btn35Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn31Click(Sender: TObject);
var
  sSql: String;
begin
  // complete theSQL string
  sSql := '';
  dmoViolations.qryOwners.SQL.Text := sSql;
  dmoViolations.qryOwners.Active := true;
end;

procedure TForm1.btn32Click(Sender: TObject);
var
  sSql: String;
begin
  // complete theSQL string
  sSql := '';
  dmoViolations.qryOwners.SQL.Text := sSql;
  dmoViolations.qryOwners.Active := true;
end;

procedure TForm1.btn33Click(Sender: TObject);
var
  sSql: String;
begin
  sSql := '';
  dmoViolations.qryOwners.SQL.Text := sSql;
  dmoViolations.qryOwners.Active := true;
end;

procedure TForm1.btn34Click(Sender: TObject);
var
  sSql: String;
begin
  sSql := '';
  dmoViolations.qryOwners.SQL.Text := sSql;
  dmoViolations.qryOwners.Active := true;
end;

procedure TForm1.btn35Click(Sender: TObject);
var
  sSql: String;
begin
  sSql := '';
  dmoViolations.qryOwners.SQL.Text := sSql;
  dmoViolations.qryOwners.Active := true;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  dmoViolations.qryOwners.SQL.Text := 'Select * FROM tblOwners';
  dmoViolations.qryOwners.Active := true;
end;

end.
