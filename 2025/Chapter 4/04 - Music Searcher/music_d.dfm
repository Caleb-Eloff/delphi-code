object dmoMusic: TdmoMusic
  OldCreateOrder = False
  Height = 194
  Width = 203
  object dbMusicConnect: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=.\mus' +
      'ic.mdb;Mode=Share Deny None;Jet OLEDB:System database="";Jet OLE' +
      'DB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Eng' +
      'ine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Pa' +
      'rtial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:' +
      'New Database Password="";Jet OLEDB:Create System Database=False;' +
      'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on ' +
      'Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet' +
      ' OLEDB:SFP=False;'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 16
  end
  object qryMusic: TADOQuery
    Connection = dbMusicConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Music;')
    Left = 24
    Top = 128
    object qryMusicID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryMusicartist: TWideStringField
      FieldName = 'artist'
      Size = 255
    end
    object qryMusicalbum: TWideStringField
      FieldName = 'album'
      Size = 255
    end
    object qryMusicsong: TWideStringField
      FieldName = 'song'
      Size = 255
    end
    object qryMusicgenre: TWideStringField
      FieldName = 'genre'
      Size = 255
    end
    object qryMusicyear: TIntegerField
      FieldName = 'year'
    end
    object qryMusicduration: TFloatField
      FieldName = 'duration'
      DisplayFormat = '#.00'
    end
    object qryMusicpopularity: TFloatField
      FieldName = 'popularity'
      DisplayFormat = '#.00'
    end
    object qryMusicloudness: TFloatField
      FieldName = 'loudness'
      DisplayFormat = '#.00'
    end
    object qryMusicbeats_per_minute: TFloatField
      FieldName = 'beats_per_minute'
      DisplayFormat = '#.00'
    end
  end
  object dsMusic: TDataSource
    DataSet = qryMusic
    Left = 136
    Top = 128
  end
end
