object frmPhotoBomb: TfrmPhotoBomb
  Left = 0
  Top = 0
  Caption = 'Photo Bomb'
  ClientHeight = 99
  ClientWidth = 179
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblImageName: TLabel
    Left = 8
    Top = 10
    Width = 63
    Height = 13
    Caption = 'Image name:'
  end
  object btnActivateVirus: TButton
    Left = 8
    Top = 56
    Width = 161
    Height = 33
    Caption = 'ACTIVATE VIRUS'
    TabOrder = 0
    OnClick = btnActivateVirusClick
  end
  object edtImageName: TEdit
    Left = 8
    Top = 29
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object tmrTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrTimerTimer
    Left = 144
    Top = 8
  end
end
