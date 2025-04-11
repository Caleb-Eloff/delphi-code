unit frmCar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, Spin, pngimage;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    sgrCars: TStringGrid;
    edtModel: TLabeledEdit;
    edtPrice: TLabeledEdit;
    sedYear: TSpinEdit;
    cbxBrand: TComboBox;
    Label2: TLabel;
    btnSave: TButton;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
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
//inputs

//create object

//call object methods and display ingrid

end;
//given code do not remove
procedure TForm1.FormShow(Sender: TObject);
begin
 sgrCars.Cells[0, 0] := 'Description';
 sgrCars.Cells[1, 0] := 'Price+VAT';
 sedYear.MaxValue:= StrToInt(Formatdatetime('YYYY',now));
end;

end.
