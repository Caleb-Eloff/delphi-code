unit ElectricityAcc_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    lblHeading: TLabel;
    edtBalance: TEdit;
    lblBalance: TLabel;
    dtpDueDate: TDateTimePicker;
    lblDate: TLabel;
    btnProcess: TButton;
    redOut: TRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
