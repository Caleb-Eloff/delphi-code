Unit frmConeCalculations;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, Buttons;

Type
  TForm1 = Class(TForm)
    btnSlantHeight: TButton;
    btnVolume: TButton;
    btnSurfaceArea: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label2: TLabel;
    sbnNewCone: TSpeedButton;
    Procedure btnSlantHeightClick(Sender: TObject);
    Procedure btnVolumeClick(Sender: TObject);
    Procedure btnSurfaceAreaClick(Sender: TObject);
    procedure sbnNewConeClick(Sender: TObject);
  Private
    { Private declarations }

  Public
    { Public declarations }

  End;

Var
  Form1: TForm1;

Implementation

{$R *.dfm}

Procedure TForm1.btnSlantHeightClick(Sender: TObject);
Begin
  Image2.Stretch := True;
  Image2.Picture.LoadFromFile('SlantHeight2.png');
//enter code here


End;

Procedure TForm1.btnVolumeClick(Sender: TObject);
Begin
  Image2.Picture.LoadFromFile('Volume.png');
//enter code here

  
End;

Procedure TForm1.btnSurfaceAreaClick(Sender: TObject);
Begin
  Image2.Picture.LoadFromFile('SurfaceArea.png');
//enter code here


End;

procedure TForm1.sbnNewConeClick(Sender: TObject);
Var
  height: Double;
  diameter: Double;
Begin
  //enter code here



  btnSlantHeight.Enabled := true;
  btnVolume.Enabled := true;
  btnSurfaceArea.Enabled := true;
end;

End.
