object frmQuestion2: TfrmQuestion2
  Left = 0
  Top = 0
  Caption = 'Major Max'
  ClientHeight = 431
  ClientWidth = 672
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 673
    Height = 73
    Caption = 'MajorMax.com'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object btnSalesInformation: TButton
    Left = 8
    Top = 79
    Width = 200
    Height = 42
    Caption = 'Sales Information'
    TabOrder = 1
  end
  object btnUnderperforming: TButton
    Left = 216
    Top = 79
    Width = 241
    Height = 42
    Caption = 'Display underperforming departments'
    TabOrder = 2
  end
  object btnNewWeek: TButton
    Left = 464
    Top = 79
    Width = 200
    Height = 42
    Caption = 'New week'
    TabOrder = 3
  end
  object redOutput: TRichEdit
    Left = 8
    Top = 127
    Width = 656
    Height = 296
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 4
  end
end
