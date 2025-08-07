unit AWay_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, jpeg;

type
  TForm1 = class(TForm)
    imgBackground: TImage;
    Panel1: TPanel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

  // Remove title bar and borders
  BorderStyle := bsNone;
  // Maximize to full screen
  WindowState := wsMaximized;

  // Load background image
  imgBackground.Picture.LoadFromFile('HomePage.jpg');

  // Centre panel
  Panel1.Left := (ClientWidth - Panel1.Width) DIV 2;
  Panel1.Top := (ClientHeight - Panel1.Height) DIV 2;

end;

end.
