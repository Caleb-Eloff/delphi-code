unit photoBomb_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPhotoBomb = class(TForm)
    btnActivateVirus: TButton;
    edtImageName: TEdit;
    lblImageName: TLabel;
    tmrTimer: TTimer;
    procedure btnActivateVirusClick(Sender: TObject);
    procedure tmrTimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPhotoBomb: TfrmPhotoBomb;

implementation

{$R *.dfm}



end.
