object frmSchools: TfrmSchools
  Left = 0
  Top = 0
  Caption = 'School participation'
  ClientHeight = 411
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 288
    Top = 378
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object redOutput: TRichEdit
    Left = 199
    Top = 18
    Width = 266
    Height = 343
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 18
    Width = 185
    Height = 79
    Caption = 'Q 3.1 Display Schools'
    TabOrder = 2
    object btnDisplay: TButton
      Left = 16
      Top = 32
      Width = 145
      Height = 25
      Caption = 'Display Information'
      TabOrder = 0
      OnClick = btnDisplayClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 103
    Width = 185
    Height = 82
    Caption = 'Q 3.2 Sorted Lists'
    TabOrder = 3
    object btnSort: TButton
      Left = 16
      Top = 32
      Width = 145
      Height = 25
      Caption = 'Show Sorted List'
      TabOrder = 0
      OnClick = btnSortClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 191
    Width = 185
    Height = 82
    Caption = 'Q 3.3 School Codes'
    TabOrder = 4
    object btnCode: TButton
      Left = 16
      Top = 33
      Width = 145
      Height = 25
      Caption = 'Generate School Codes'
      TabOrder = 0
      OnClick = btnCodeClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 279
    Width = 185
    Height = 82
    Caption = 'Q 3.4 Search '
    TabOrder = 5
    object btnSearch: TButton
      Left = 16
      Top = 34
      Width = 145
      Height = 25
      Caption = 'Search Specific School'
      TabOrder = 0
      OnClick = btnSearchClick
    end
  end
end
