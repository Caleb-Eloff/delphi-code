object frmQuestion2: TfrmQuestion2
  Left = 0
  Top = 0
  Caption = 'Question 2'
  ClientHeight = 331
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 420
    Top = 24
    Width = 120
    Height = 16
    Caption = 'Enter Guest Number:'
  end
  object edtGuestNumber: TEdit
    Left = 420
    Top = 46
    Width = 121
    Height = 24
    TabOrder = 0
  end
  object btnListItems: TButton
    Left = 419
    Top = 104
    Width = 121
    Height = 33
    Caption = 'List Items'
    TabOrder = 1
  end
  object redDisplay: TRichEdit
    Left = 8
    Top = 21
    Width = 395
    Height = 284
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
  end
end
