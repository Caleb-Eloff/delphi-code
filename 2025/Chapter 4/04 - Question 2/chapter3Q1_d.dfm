object dmoBandB: TdmoBandB
  OldCreateOrder = False
  Height = 70
  Width = 217
  object conBandB: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=G:\My' +
      ' Drive\IT DOE Textbook Writing\Grade 12\June 2019\Data for learn' +
      'ers\Chapter 4\04 - Question 2\BandB.mdb;Mode=Share Deny None;Per' +
      'sist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:' +
      'Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine' +
      ' Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Parti' +
      'al Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New' +
      ' Database Password="";Jet OLEDB:Create System Database=False;Jet' +
      ' OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Com' +
      'pact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OL' +
      'EDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 8
  end
  object qryQuery: TADOQuery
    Connection = conBandB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblClients')
    Left = 96
    Top = 8
  end
  object sorQuery: TDataSource
    DataSet = qryQuery
    Left = 152
    Top = 8
  end
end
