object frmCities: TfrmCities
  Left = 0
  Top = 0
  Caption = 'Cities in South Africa'
  ClientHeight = 406
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object dbgCitieData: TDBGrid
    Left = 8
    Top = 8
    Width = 774
    Height = 281
    DataSource = CitiesDM.sorCities
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnAll: TButton
    Left = 16
    Top = 304
    Width = 121
    Height = 33
    Caption = 'Show all towns'
    TabOrder = 1
    OnClick = btnAllClick
  end
  object btnInsert: TButton
    Left = 160
    Top = 304
    Width = 121
    Height = 33
    Caption = 'Insert town/city'
    TabOrder = 2
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 304
    Top = 304
    Width = 121
    Height = 33
    Caption = 'Update Population'
    TabOrder = 3
    OnClick = btnUpdateClick
  end
  object btnDelete: TButton
    Left = 448
    Top = 304
    Width = 105
    Height = 33
    Caption = 'Delete Cities'
    TabOrder = 4
    OnClick = btnDeleteClick
  end
end
