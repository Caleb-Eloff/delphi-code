object frmTileCost: TfrmTileCost
  Left = 0
  Top = 0
  Caption = 'Calculating Tile Cost'
  ClientHeight = 201
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblDimension: TLabel
    Left = 24
    Top = 7
    Width = 194
    Height = 16
    Caption = 'Enter Dimensions of the Room'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblLength: TLabel
    Left = 24
    Top = 32
    Width = 33
    Height = 13
    Caption = 'Length'
  end
  object lblBreadth: TLabel
    Left = 24
    Top = 64
    Width = 38
    Height = 13
    Caption = 'Breadth'
  end
  object edtLength: TEdit
    Left = 96
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtBreadth: TEdit
    Left = 96
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnTileCalculator: TButton
    Left = 248
    Top = 32
    Width = 89
    Height = 36
    Caption = 'Tile Calculator'
    TabOrder = 2
  end
  object redDisplay: TRichEdit
    Left = 24
    Top = 104
    Width = 313
    Height = 89
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 3
  end
end
