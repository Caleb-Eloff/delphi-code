object dbmSoftDrink: TdbmSoftDrink
  OnCreate = DataModuleCreate
  Height = 288
  Width = 360
  object conSoftDrinkDB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\elocal21\Desktop\delphi-code\2024\Chapter 8 Data\08 - SoftDr' +
      'ink_1\SoftDrinkDB.mdb;Mode=Share Deny None;Persist Security Info' +
      '=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";J' +
      'et OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:' +
      'Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet ' +
      'OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password' +
      '="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Dat' +
      'abase=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLE' +
      'DB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 128
  end
  object tblSoftDrink: TADOTable
    Active = True
    Connection = conSoftDrinkDB
    CursorType = ctStatic
    TableName = 'tblSoftDrink'
    Left = 160
    Top = 128
  end
  object dscSoftDrink: TDataSource
    DataSet = tblSoftDrink
    Left = 232
    Top = 128
  end
end