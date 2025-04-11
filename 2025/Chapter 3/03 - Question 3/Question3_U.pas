// Enter your examination number here

unit Question3_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
  TfrmQ3 = class(TForm)
    redQ3GameBoard: TRichEdit;
    rgbQ3: TRadioGroup;
    btnQ3_1StartGame: TButton;
    btnClose: TBitBtn;
    btnQ3_2Play: TButton;
    cmbRow: TComboBox;
    cmbCol: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    redQ3Incorrect: TRichEdit;
    btnQ3_3Reveal: TButton;
    Label5: TLabel;
    pnlQ3NumberOfGuesses: TPanel;
    pnlPlay: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQ3: TfrmQ3;

  // Provided code
  arrGame: array [1..9, 1..9] of char;

implementation

{$R *.dfm}
{$R+}

end.
