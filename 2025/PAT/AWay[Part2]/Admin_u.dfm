object frmAdmin: TfrmAdmin
  Left = 0
  Top = 0
  Caption = 'A-Way Airlines'
  ClientHeight = 881
  ClientWidth = 1604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object imgAdminBackground: TImage
    Left = 0
    Top = 0
    Width = 1604
    Height = 881
    Align = alClient
    Stretch = True
    ExplicitLeft = 560
    ExplicitTop = 304
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object lblAdminPanel: TLabel
    Left = 800
    Top = 64
    Width = 408
    Height = 48
    Caption = 'Admin Panel'
    Font.Charset = OEM_CHARSET
    Font.Color = clWhite
    Font.Height = -48
    Font.Name = 'Terminal'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lblPricing: TLabel
    Left = 1592
    Top = 152
    Width = 260
    Height = 48
    Caption = 'Pricing'
    Font.Charset = OEM_CHARSET
    Font.Color = clWhite
    Font.Height = -48
    Font.Name = 'Terminal'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object dbgProfiles: TDBGrid
    Left = 552
    Top = 152
    Width = 969
    Height = 601
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnAdminLogOut: TButton
    Left = 24
    Top = 1016
    Width = 75
    Height = 25
    Caption = 'Log Out'
    TabOrder = 1
    OnClick = btnAdminLogOutClick
  end
  object btnCreate: TButton
    Left = 584
    Top = 784
    Width = 75
    Height = 25
    Caption = 'Create'
    TabOrder = 2
    OnClick = btnCreateClick
  end
  object btnUpdate: TButton
    Left = 824
    Top = 784
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 3
    OnClick = btnUpdateClick
  end
  object btnRemove: TButton
    Left = 704
    Top = 784
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 4
    OnClick = btnRemoveClick
  end
  object btnUpdatePrice: TButton
    Left = 1672
    Top = 551
    Width = 99
    Height = 25
    Caption = 'Update Price'
    TabOrder = 5
    OnClick = btnUpdatePriceClick
  end
  object redPricing: TRichEdit
    Left = 1568
    Top = 216
    Width = 305
    Height = 321
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
end
