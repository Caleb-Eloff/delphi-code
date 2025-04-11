object frmSudoku: TfrmSudoku
  Left = 0
  Top = 0
  Caption = 'Sudoku'
  ClientHeight = 533
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblHeader: TLabel
    Left = 8
    Top = 13
    Width = 89
    Height = 29
    Caption = 'Sudoku'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grdSudoku: TStringGrid
    Left = 8
    Top = 48
    Width = 449
    Height = 449
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    ColCount = 9
    DefaultColWidth = 48
    DefaultRowHeight = 48
    FixedCols = 0
    RowCount = 9
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 0
  end
  object btnCheckSolution: TButton
    Left = 8
    Top = 503
    Width = 448
    Height = 25
    Caption = 'Check Solution'
    TabOrder = 1
  end
end
