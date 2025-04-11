object frmSong: TfrmSong
  Left = 0
  Top = 0
  Caption = 'My playlist'
  ClientHeight = 357
  ClientWidth = 444
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
    Left = 16
    Top = 16
    Width = 226
    Height = 29
    Caption = 'My favourite songs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 176
    Top = 248
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 256
    Top = 99
    Width = 65
    Height = 13
    Caption = 'Track number'
  end
  object srgSongs: TStringGrid
    Left = 16
    Top = 203
    Width = 410
    Height = 120
    ColCount = 2
    DefaultColWidth = 200
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    TabOrder = 0
    ColWidths = (
      261
      200)
    RowHeights = (
      24
      23
      24
      24
      24)
  end
  object edtArtist: TLabeledEdit
    Left = 16
    Top = 72
    Width = 226
    Height = 21
    EditLabel.Width = 26
    EditLabel.Height = 13
    EditLabel.Caption = 'Artist'
    TabOrder = 1
  end
  object edtSong: TLabeledEdit
    Left = 16
    Top = 112
    Width = 226
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'Song'
    TabOrder = 2
  end
  object edtAlbum: TLabeledEdit
    Left = 255
    Top = 72
    Width = 178
    Height = 21
    EditLabel.Width = 29
    EditLabel.Height = 13
    EditLabel.Caption = 'Album'
    TabOrder = 3
  end
  object sedTrackNumber: TSpinEdit
    Left = 256
    Top = 112
    Width = 65
    Height = 22
    MaxValue = 20
    MinValue = 1
    TabOrder = 4
    Value = 1
  end
  object btnAdd: TButton
    Left = 255
    Top = 152
    Width = 178
    Height = 25
    Caption = 'Add to playlist'
    TabOrder = 5
    OnClick = btnAddClick
  end
  object edtDuration: TLabeledEdit
    Left = 16
    Top = 154
    Width = 121
    Height = 21
    EditLabel.Width = 91
    EditLabel.Height = 13
    EditLabel.Caption = 'Duration (seconds)'
    TabOrder = 6
  end
end
