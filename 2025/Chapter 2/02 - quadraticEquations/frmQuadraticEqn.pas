unit frmQuadraticEqn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, pngimage;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    lstOutput: TListBox;
    btnMakeList: TButton;
    btnSave: TButton;
    btnShuffleList: TButton;
    rgpType: TRadioGroup;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnMakeListClick(Sender: TObject);
    procedure btnShuffleListClick(Sender: TObject);
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

procedure TForm1.btnMakeListClick(Sender: TObject);
var
  a, b, c: Integer;
  aLow, aHigh: Integer;
  bLow, bHigh: Integer;
  cLow, cHigh: Integer;
begin

  aHigh := 4;
  aLow := -1 * aHigh;
  bHigh := sqr(aHigh) + 1;
  bLow := -1 * bHigh;
  cLow := aLow;
  cHigh := aHigh;

  lstOutput.Clear;
  for a := aLow to aHigh do
    for b := bLow to bHigh do
      for c := cLow to cHigh do
      begin
        if (a <> 0) AND (b <> 0) AND (c <> 0) then
        begin
         
        end;
      end;
end;
//given code save to file
procedure TForm1.btnSaveClick(Sender: TObject);
begin
  lstOutput.Items.SaveToFile('QuadEqn.txt');
end;
 //given code shuffle the list
procedure TForm1.btnShuffleListClick(Sender: TObject);
var
  count, i: Integer;
  index1: Integer;
  index2: Integer;
begin
  count := lstOutput.count;
  for i := 0 to 1000 do
  begin
    index1 := Random(count);
    index2 := Random(count);
    lstOutput.items.Exchange(index1, index2);
  end;
end;

end.
