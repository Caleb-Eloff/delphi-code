object frmStars: TfrmStars
  Left = 0
  Top = 0
  Caption = 'Stars'
  ClientHeight = 325
  ClientWidth = 520
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
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 89
    Height = 33
    Caption = 'STARS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 77
    Height = 16
    Caption = 'Select a star:'
  end
  object imgStar: TImage
    Left = 272
    Top = 21
    Width = 233
    Height = 236
    Proportional = True
  end
  object cbxStar: TComboBox
    Left = 16
    Top = 102
    Width = 217
    Height = 24
    TabOrder = 0
    Items.Strings = (
      'Acrux'
      'Mimosa'
      'Gacrux'
      'Mintaka'
      'Alnilam'
      'Alnitak'
      'Saiph'
      'Bellatrix'
      'Betelgeuse'
      'Shaula'
      'Girtab'
      'Antares'
      'Acrab'
      'Dschubba'
      'Rigil Kent'
      'Hadar'
      'Menkent')
  end
  object redDisplay: TRichEdit
    Left = 16
    Top = 132
    Width = 217
    Height = 125
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnObject: TButton
    Left = 18
    Top = 272
    Width = 215
    Height = 33
    Caption = 'Instantiate Object'
    TabOrder = 2
  end
  object btnDisplay: TButton
    Left = 272
    Top = 272
    Width = 114
    Height = 33
    Caption = 'Display'
    TabOrder = 3
  end
  object btnVisibility: TButton
    Left = 392
    Top = 272
    Width = 113
    Height = 33
    Caption = 'Visibility'
    TabOrder = 4
  end
end
