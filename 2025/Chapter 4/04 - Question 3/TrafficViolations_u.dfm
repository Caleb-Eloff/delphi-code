object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Traffic Violations'
  ClientHeight = 279
  ClientWidth = 818
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
    Top = 32
    Width = 176
    Height = 25
    Caption = 'Traffic violations'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgOwners: TDBGrid
    Left = 168
    Top = 80
    Width = 633
    Height = 184
    DataSource = dmoViolations.dsOwners
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn31: TButton
    Left = 24
    Top = 80
    Width = 105
    Height = 25
    Caption = 'Question 3.1'
    TabOrder = 1
    OnClick = btn31Click
  end
  object btn32: TButton
    Left = 24
    Top = 119
    Width = 105
    Height = 25
    Caption = 'Question 3.2'
    TabOrder = 2
    OnClick = btn32Click
  end
  object btn33: TButton
    Left = 24
    Top = 160
    Width = 105
    Height = 25
    Caption = 'Question 3.3'
    TabOrder = 3
    OnClick = btn33Click
  end
  object btn34: TButton
    Left = 24
    Top = 200
    Width = 105
    Height = 25
    Caption = 'Question 3.4'
    TabOrder = 4
    OnClick = btn34Click
  end
  object btn35: TButton
    Left = 24
    Top = 239
    Width = 105
    Height = 25
    Caption = 'Qusetion 3.5'
    TabOrder = 5
    OnClick = btn35Click
  end
end
