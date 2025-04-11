unit u_wordClock;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmWordClock = class(TForm)
    lblHeader: TLabel;
    shpBackground: TRectangle;
    lblSeconds: TLabel;
    lblMinutes: TLabel;
    lblHours: TLabel;
    tmrTimer: TTimer;
    lblDate: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWordClock: TfrmWordClock;

implementation

{$R *.fmx}

end.
