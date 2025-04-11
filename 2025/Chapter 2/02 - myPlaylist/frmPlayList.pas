unit frmPlayList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, Grids;

type
  TfrmSong = class(TForm)
    srgSongs: TStringGrid;
    Label1: TLabel;
    edtArtist: TLabeledEdit;
    edtSong: TLabeledEdit;
    edtAlbum: TLabeledEdit;
    Label2: TLabel;
    sedTrackNumber: TSpinEdit;
    Label3: TLabel;
    btnAdd: TButton;
    edtDuration: TLabeledEdit;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSong: TfrmSong;

implementation



{$R *.dfm}

procedure TfrmSong.btnAddClick(Sender: TObject);
var
 Artist: String;
 Song: String;
 Album: String;
 TrackNumber: Integer;
 Duration: Integer;
begin
 //add code here

end;

procedure TfrmSong.FormShow(Sender: TObject);
begin
  srgSongs.Cells[0,0] := 'Song: Quick reference';
  srgSongs.Cells[1,0] := 'Duration (mm:ss)';
end;

end.
