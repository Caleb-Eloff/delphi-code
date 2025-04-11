unit Question3_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, Math;

type
  TfrmSchools = class(TForm)
    btnDisplay: TButton;
    BitBtn1: TBitBtn;
    redOutput: TRichEdit;
    btnSearch: TButton;
    btnSort: TButton;
    btnCode: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    procedure btnDisplayClick(Sender: TObject);
    procedure btnSortClick(Sender: TObject);
    procedure btnCodeClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSchools: TfrmSchools;

  arrSchools: array [1 .. 10] of String = (
    'Gordon High School',
    'Paul Roos Gymnasium',
    'Parel Vallei High School',
    'Hoërskool Strand',
    'Hoërskool Bloemhof',
    'Khanyolwethu High School',
    'Rhenish Girls'' High School',
    'Macassar High School',
    'Hottentots Holland High School',
    'Hoërskool Stellenbosch'
  );

  arrNumGymnasts: array [1 .. 10] of Integer = (
    23,
    38,
    42,
    31,
    18,
    35,
    21,
    26,
    40,
    34
  );

implementation

{$R *.dfm}

procedure TfrmSchools.btnDisplayClick(Sender: TObject);
begin
  // Question 3.1


end;

procedure TfrmSchools.btnSortClick(Sender: TObject);
begin
  // Question 3.2


end;


procedure TfrmSchools.btnCodeClick(Sender: TObject);
begin
  // Question 3.3

end;

procedure TfrmSchools.btnSearchClick(Sender: TObject);
begin
  // Question 3.4


end;

procedure TfrmSchools.FormActivate(Sender: TObject);
begin
  redOutput.Paragraph.TabCount := 1;
  redOutput.Paragraph.Tab[0] := 120;
end;
end.
