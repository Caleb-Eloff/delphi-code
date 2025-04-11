object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Music Searcher'
  ClientHeight = 427
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 158
    Height = 25
    Caption = 'Music Searcher'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 288
    Width = 45
    Height = 16
    Caption = 'Artists'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 119
    Top = 288
    Width = 40
    Height = 16
    Caption = 'Album'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 230
    Top = 288
    Width = 32
    Height = 16
    Caption = 'Song'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 341
    Top = 288
    Width = 38
    Height = 16
    Caption = 'Genre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 506
    Top = 288
    Width = 81
    Height = 16
    Caption = 'Number Field'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSqlQuery: TLabel
    Left = 8
    Top = 400
    Width = 308
    Height = 16
    Caption = 
      '                                                                ' +
      '             '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 832
    Height = 193
    DataSource = dmoMusic.dsMusic
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'artist'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'album'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'song'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'genre'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'year'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'duration'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'popularity'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'loudness'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'beats_per_minute'
        Width = 100
        Visible = True
      end>
  end
  object edtArtist: TEdit
    Left = 8
    Top = 310
    Width = 105
    Height = 21
    TabOrder = 1
  end
  object btnArtist: TButton
    Left = 8
    Top = 337
    Width = 105
    Height = 25
    Caption = 'Search Artist'
    TabOrder = 2
    OnClick = btnArtistClick
  end
  object edtAlbum: TEdit
    Left = 119
    Top = 310
    Width = 105
    Height = 21
    TabOrder = 3
  end
  object btnAlbum: TButton
    Left = 119
    Top = 337
    Width = 105
    Height = 25
    Caption = 'Search Album'
    TabOrder = 4
    OnClick = btnAlbumClick
  end
  object edtSong: TEdit
    Left = 230
    Top = 310
    Width = 105
    Height = 21
    TabOrder = 5
  end
  object btnSong: TButton
    Left = 230
    Top = 337
    Width = 105
    Height = 25
    Caption = 'Search Song'
    TabOrder = 6
    OnClick = btnSongClick
  end
  object btnGenre: TButton
    Left = 341
    Top = 337
    Width = 105
    Height = 25
    Caption = 'Search Genre'
    TabOrder = 7
    OnClick = btnGenreClick
  end
  object btnSearchAll: TButton
    Left = 8
    Top = 368
    Width = 438
    Height = 25
    Caption = 'Search All'
    TabOrder = 8
    OnClick = btnSearchAllClick
  end
  object edtGenre: TEdit
    Left = 341
    Top = 310
    Width = 105
    Height = 21
    TabOrder = 9
  end
  object edtNumber: TEdit
    Left = 743
    Top = 310
    Width = 97
    Height = 21
    TabOrder = 10
  end
  object cbxField: TComboBox
    Left = 506
    Top = 310
    Width = 125
    Height = 21
    ItemIndex = 0
    TabOrder = 11
    Text = 'Year'
    Items.Strings = (
      'Year'
      'Duration'
      'Popularity'
      'Loudness'
      'Beats per minute')
  end
  object cbxSymbol: TComboBox
    Left = 637
    Top = 310
    Width = 100
    Height = 21
    ItemIndex = 0
    TabOrder = 12
    Text = 'equal to'
    Items.Strings = (
      'equal to'
      'greater than'
      'less than')
  end
  object btnNumber: TButton
    Left = 504
    Top = 337
    Width = 336
    Height = 25
    Caption = 'Search Number'
    TabOrder = 13
    OnClick = btnNumberClick
  end
end
