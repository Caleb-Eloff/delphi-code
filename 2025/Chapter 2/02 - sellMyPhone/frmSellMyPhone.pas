unit frmSellMyPhone;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, PhoneClass;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    sgrPhones: TStringGrid;
    cbxBrand: TComboBox;
    edtModel: TEdit;
    edtOwner: TEdit;
    edtPrice: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnSave: TButton;
    edtDate: TEdit;
    Label6: TLabel;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

 {$R *.dfm}

procedure TForm1.btnSaveClick(Sender: TObject);
begin
//add test code here
end;
//given code do not remove
procedure TForm1.FormShow(Sender: TObject);
begin
  sgrPhones.Cells[0, 0] := 'Cell Phone';
  sgrPhones.Cells[1, 0] := 'Age';
  sgrPhones.Cells[2, 0] := 'Price';
end;
end.
