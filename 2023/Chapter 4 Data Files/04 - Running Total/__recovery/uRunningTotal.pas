unit uRunningTotal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btnFindSum: TButton;
    lblNumber: TLabel;
    edtNumber: TEdit;
    lblTotal: TLabel;
    lblRunningTotal: TLabel;
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
