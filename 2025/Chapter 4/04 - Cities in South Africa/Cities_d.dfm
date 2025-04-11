object CitiesDM: TCitiesDM
  OldCreateOrder = False
  Height = 175
  Width = 234
  object conCities: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Cities.mdb;Mode=Rea' +
      'dWrite;Persist Security Info=False;'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 24
  end
  object qryCities: TADOQuery
    Connection = conCities
    Parameters = <>
    Left = 40
    Top = 104
  end
  object sorCities: TDataSource
    DataSet = qryCities
    Left = 144
    Top = 104
  end
end
