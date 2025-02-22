unit Error2_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmError2 = class(TForm)
    Label1: TLabel;
    lblDisplay: TLabel;
    edtPercentage: TEdit;
    btnProcess: TButton;
    procedure btnProcessClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmError2: TfrmError2;

implementation

{$R *.dfm}

procedure TfrmError2.btnProcessClick(Sender: TObject);
var
rPercent: Real;
begin
  rPercent := StrToInt(edtPercentage.Text);

  lblDisplay.Caption := 'Your term mark is: ' + FloatToStr(rPercent) + '%';
end;

end.
