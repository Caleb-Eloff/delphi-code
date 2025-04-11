unit music_d;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmoMusic = class(TDataModule)
    dbMusicConnect: TADOConnection;
    qryMusic: TADOQuery;
    dsMusic: TDataSource;
    qryMusicID: TAutoIncField;
    qryMusicartist: TWideStringField;
    qryMusicalbum: TWideStringField;
    qryMusicsong: TWideStringField;
    qryMusicgenre: TWideStringField;
    qryMusicyear: TIntegerField;
    qryMusicduration: TFloatField;
    qryMusicpopularity: TFloatField;
    qryMusicloudness: TFloatField;
    qryMusicbeats_per_minute: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmoMusic: TdmoMusic;

implementation

{$R *.dfm}

end.
