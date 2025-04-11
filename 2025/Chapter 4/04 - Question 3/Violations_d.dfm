object dmoViolations: TdmoViolations
  OldCreateOrder = False
  Height = 150
  Width = 321
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=G:\My' +
      ' Drive\IT DOE Textbook Writing\Grade 12\June 2019\Data for learn' +
      'ers\Chapter 4\04 - Question 3\TrafficViolations.mdb;Mode=Share D' +
      'eny None;Persist Security Info=False;Jet OLEDB:System database="' +
      '";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet ' +
      'OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:' +
      'Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;J' +
      'et OLEDB:New Database Password="";Jet OLEDB:Create System Databa' +
      'se=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy L' +
      'ocale on Compact=False;Jet OLEDB:Compact Without Replica Repair=' +
      'False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 16
  end
  object qryOwners: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select  *  From tblOwners; ')
    Left = 24
    Top = 88
  end
  object dsOwners: TDataSource
    DataSet = qryOwners
    Left = 112
    Top = 88
  end
end
