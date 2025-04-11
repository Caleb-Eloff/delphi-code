// Enter your name and surname here
// Sleutel jou naame en van hier in
unit Question1_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Spin, pngimage, Math;

type
  TfrmQuestion1 = class(TForm)
    pnlHeader: TPanel;
    pnl1: TPanel;
    btnQ1_1: TButton;
    pnl3: TPanel;
    imgQ1_1: TImage;
    btnQ1_3: TButton;
    Label2: TLabel;
    pnl5: TPanel;
    cbxAccommodation: TCheckBox;
    btnQ1_5: TButton;
    pnlQ1_3: TPanel;
    lblName: TLabel;
    edtSurname: TEdit;
    pnlQ1_5: TPanel;
    pnl2: TPanel;
    btnQ1_2: TButton;
    lblQ1_2A: TLabel;
    lblQ1_2B: TLabel;
    sedNumNights: TSpinEdit;
    rgpChaletOption: TRadioGroup;
    pnl4: TPanel;
    btnQ1_4: TButton;
    Label1: TLabel;
    edtSightings: TEdit;
    redQ1_4: TRichEdit;
    procedure btnQ1_1Click(Sender: TObject);
    procedure btnQ1_2Click(Sender: TObject);
    procedure btnQ1_4Click(Sender: TObject);
    procedure btnQ1_3Click(Sender: TObject);
    procedure btnQ1_5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion1: TfrmQuestion1;

implementation

{$R *.dfm}

const
  dReserveLength = 40.4;
  dReserveWidth = 27.8;

procedure TfrmQuestion1.btnQ1_1Click(Sender: TObject);
begin
  //  QUESTION 1.1

end;

procedure TfrmQuestion1.btnQ1_2Click(Sender: TObject);
begin
  //  QUESTION 1.2

end;

procedure TfrmQuestion1.btnQ1_3Click(Sender: TObject);
begin
  //  QUESTION 1.3

end;

procedure TfrmQuestion1.btnQ1_4Click(Sender: TObject);
begin
  //  QUESTION 1.4

end;

procedure TfrmQuestion1.btnQ1_5Click(Sender: TObject);
begin
  //  QUESTION 1.5

end;

end.
