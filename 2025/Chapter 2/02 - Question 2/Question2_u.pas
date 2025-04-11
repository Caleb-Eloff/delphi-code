unit Question2_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmQuestion2 = class(TForm)
    Label1: TLabel;
    edtGuestNumber: TEdit;
    btnListItems: TButton;
    redDisplay: TRichEdit;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion2: TfrmQuestion2;

implementation

{$R *.dfm}

procedure TfrmQuestion2.FormActivate(Sender: TObject);
begin
redDisplay.Paragraph.TabCount := 3;
redDisplay.Paragraph.Tab[0] := 80;
redDisplay.Paragraph.Tab[1] := 140;
redDisplay.Paragraph.Tab[2] := 200;
//Read text file


end;

end.
