object frmClients: TfrmClients
  Left = 0
  Top = 0
  Caption = 'Client Details'
  ClientHeight = 355
  ClientWidth = 497
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
  object lblDetails: TLabel
    Left = 32
    Top = 32
    Width = 110
    Height = 19
    Caption = 'Client Details'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnDisplayClient: TButton
    Left = 384
    Top = 300
    Width = 89
    Height = 33
    Caption = 'Display Client'
    TabOrder = 0
    OnClick = btnDisplayClientClick
  end
  object redDisplay: TRichEdit
    Left = 32
    Top = 104
    Width = 417
    Height = 169
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 1
  end
end