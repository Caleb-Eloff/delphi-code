unit Question2_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TfrmQuestion2 = class(TForm)
    Panel1: TPanel;
    btnSalesInformation: TButton;
    btnUnderperforming: TButton;
    btnNewWeek: TButton;
    redOutput: TRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion2: TfrmQuestion2;

implementation
//Provided code
var
 aDepartments : array[1..8] of String = (
  'PCs &Laptops', 'Tablets & eReaders', 'Software',
  'Printers, Toners and Ink', 'Cellphones', 'Games & Drones ',
  'Network equipment', 'Accessories');

 aSales: array [1..8, 1..6] of Real = (
  (935.89, 965.99, 4056.77,5023.89, 3802.66, 1146.98),
  (2667.78, 2491.78, 1989.65, 2647.88,1601.56, 1921.99),
  (6702.45, 4271.56, 3424.45, 3924.55, 3085.45,3359.77),
  (6662.34, 6658.45, 8075.43, 2360.66, 2635.44, 7365.69),
  (16405.33, 9741.37, 13381.56, 18969.76, 8604.55, 20207.56),
  (10515.29, 7582.66, 9856.56, 7537.68, 9115.67, 8401.55),
  (7590.99, 9212.65, 9070.98, 6439.99, 7984.88, 8767.45),
  (9220.65, 8097.99, 10067.44, 9960.87, 10109.56, 6571.66));

 iStartWeek: Integer = 1;
{$R *.dfm}

end.
