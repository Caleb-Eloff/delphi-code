object frmIsolateDigits: TfrmIsolateDigits
  Left = 0
  Top = 0
  Caption = 'Isolate Digits'
  ClientHeight = 231
  ClientWidth = 505
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
  object lblMessage: TLabel
    Left = 24
    Top = 24
    Width = 75
    Height = 13
    Caption = 'Enter a Number'
  end
  object edtNumber: TEdit
    Left = 24
    Top = 48
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object btnIsolateDigitsM1: TButton
    Left = 24
    Top = 120
    Width = 137
    Height = 25
    Caption = 'Isolate Digits Method 1'
    TabOrder = 1
  end
  object btnIsolateDigitsM2: TButton
    Left = 24
    Top = 168
    Width = 137
    Height = 25
    Caption = 'Isolate Digits Method 2'
    TabOrder = 2
  end
  object memDisplay: TMemo
    Left = 280
    Top = 21
    Width = 185
    Height = 172
    Lines.Strings = (
      '')
    TabOrder = 3
  end
end