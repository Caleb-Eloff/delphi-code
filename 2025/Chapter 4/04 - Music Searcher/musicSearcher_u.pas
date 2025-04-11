unit musicSearcher_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, music_d, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    edtArtist: TEdit;
    btnArtist: TButton;
    Label3: TLabel;
    edtAlbum: TEdit;
    btnAlbum: TButton;
    Label4: TLabel;
    edtSong: TEdit;
    btnSong: TButton;
    Label5: TLabel;
    btnGenre: TButton;
    btnSearchAll: TButton;
    Label6: TLabel;
    edtGenre: TEdit;
    edtNumber: TEdit;
    cbxField: TComboBox;
    cbxSymbol: TComboBox;
    btnNumber: TButton;
    lblSqlQuery: TLabel;
    procedure btnArtistClick(Sender: TObject);
    procedure btnAlbumClick(Sender: TObject);
    procedure btnSongClick(Sender: TObject);
    procedure btnGenreClick(Sender: TObject);
    procedure btnNumberClick(Sender: TObject);
    procedure btnSearchAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAlbumClick(Sender: TObject);
var
  sSqlQuery : String;
  sAlbum: String;
begin
  sAlbum := edtAlbum.Text;
  sSqlQuery:= 'SELECT * FROM music WHERE album LIKE "%'+ sAlbum+ '%"';
  lblSqlQuery.Caption := sSqlQuery;
  dmoMusic.qryMusic.SQL.Text := sSqlQuery;
  dmoMusic.qryMusic.Active := True;
end;

procedure TForm1.btnArtistClick(Sender: TObject);
var
  sSqlQuery : String;
  sArtist: String;
Begin
  sArtist := edtArtist.Text;
  sSqlQuery := 'SELECT * FROM music WHERE artist = "' + sArtist + '"';
  lblSqlQuery.Caption := sSqlQuery;
  dmoMusic.qryMusic.SQL.Text := sSqlQuery;
  dmoMusic.qryMusic.active := true;
end;

procedure TForm1.btnGenreClick(Sender: TObject);
var
  sSqlQuery : String;
  sGenre: String;
begin
  sGenre := edtGenre.Text;
//Insert your code to build the SQL string here
//sSqlQuery :=
  lblSqlQuery.Caption := sSqlQuery;
  dmoMusic.qryMusic.SQL.Text := sSqlQuery;
  dmoMusic.qryMusic.Active := True;
end;

procedure TForm1.btnNumberClick(Sender: TObject);
var
  sSqlQuery : String;
  sField, sSymbol, sValue: String;
Begin
  case cbxField.ItemIndex of
   0: sField := 'year';
   1: sField := 'duration';
   2: sField := 'popularity';
   3: sField := 'loudness';
   4: sField := 'beats_per_minute';
  end;
  case cbxSymbol.ItemIndex of
   0: sSymbol := ' = ';
   1: sSymbol := ' > ';
   2: sSymbol := ' < ';
  end;
  sValue := edtNumber.Text;
  sSqlQuery := 'SELECT * FROM music WHERE '+ sField + sSymbol + sValue;
  lblSqlQuery.Caption := sSqlQuery;
  dmoMusic.qryMusic.SQL.Text := sSqlQuery;
  dmoMusic.qryMusic.active := true;
end;

procedure TForm1.btnSearchAllClick(Sender: TObject);
var
  sSqlQuery : String;
  sGenre: String;
  sArtist: String;
  sAlbum : String;
  sSong : String;
begin
  sGenre := edtGenre.Text;
  sArtist:= edtArtist.Text;
  sAlbum := edtAlbum.Text;
  sSong := edtSong.Text;
//Insert your code to build the SQL string here
//sSqlQuery :=

  lblSqlQuery.Caption := sSqlQuery;
  dmoMusic.qryMusic.SQL.Text := sSqlQuery;
  dmoMusic.qryMusic.Active := True;
end;

procedure TForm1.btnSongClick(Sender: TObject);
var
  sSqlQuery : String;
  sSong: String;
begin
  sSong := edtSong.Text;
//Insert your code to build the SQL string here
//sSqlQuery:=
  lblSqlQuery.Caption := sSqlQuery;
  dmoMusic.qryMusic.SQL.Text := sSqlQuery;
  dmoMusic.qryMusic.Active := True;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  dmoMusic.qryMusic.SQL.Text := 'SELECT * FROM music';
  dmoMusic.qryMusic.Active := True;
end;

end.
