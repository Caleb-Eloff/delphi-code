unit Question4_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfrmQuestion4 = class(TForm)
    pgcBirthdays: TPageControl;
    tbsCheck: TTabSheet;
    redBirthdays: TRichEdit;
    btnDisplay: TButton;
    edtYear: TLabeledEdit;
    edtMonth: TLabeledEdit;
    edtDay: TLabeledEdit;
    tbsAddBirthday: TTabSheet;
    edtName: TLabeledEdit;
    edtSurname: TLabeledEdit;
    edtGender: TLabeledEdit;
    edtBday: TLabeledEdit;
    edtBmonth: TLabeledEdit;
    edtByear: TLabeledEdit;
    btnAddBirthday: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnDisplayClick(Sender: TObject);
    procedure btnAddBirthdayClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion4: TfrmQuestion4;
  tfBirthdays: TextFile;

implementation

{$R *.dfm}

 procedure TfrmQuestion4.FormCreate(Sender: TObject);
begin
  // Question 4.1


end;

procedure TfrmQuestion4.btnDisplayClick(Sender: TObject);
begin
  // Question 4.2


end;

procedure TfrmQuestion4.btnAddBirthdayClick(Sender: TObject);
begin
  // Question 4.3


end;

end.
