object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Array Questions'
  ClientHeight = 161
  ClientWidth = 563
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
  object btnQuestion1: TButton
    Left = 463
    Top = 8
    Width = 90
    Height = 25
    Caption = 'Question 1'
    TabOrder = 0
    OnClick = btnQuestion1Click
  end
  object btnQuestion2: TButton
    Left = 463
    Top = 47
    Width = 90
    Height = 25
    Caption = 'Question 2'
    TabOrder = 1
    OnClick = btnQuestion2Click
  end
  object btnQuestion3: TButton
    Left = 463
    Top = 88
    Width = 90
    Height = 25
    Caption = 'Question 3'
    TabOrder = 2
    OnClick = btnQuestion3Click
  end
  object btnQuestion4: TButton
    Left = 463
    Top = 127
    Width = 90
    Height = 25
    Caption = 'Question 4'
    TabOrder = 3
    OnClick = btnQuestion4Click
  end
  object lbxAnswer: TListBox
    Left = 8
    Top = 8
    Width = 449
    Height = 144
    ItemHeight = 13
    TabOrder = 4
  end
end
