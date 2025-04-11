object frmQuestion1: TfrmQuestion1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 671
  ClientWidth = 954
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Georgia'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 954
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    Color = 16512
    Font.Charset = ANSI_CHARSET
    Font.Color = clSilver
    Font.Height = -40
    Font.Name = 'Georgia'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnl1: TPanel
    Left = 0
    Top = 80
    Width = 460
    Height = 240
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object imgQ1_1: TImage
      Left = 240
      Top = 20
      Width = 200
      Height = 200
    end
    object btnQ1_1: TButton
      Left = 20
      Top = 20
      Width = 200
      Height = 40
      Caption = 'QUESTION 1.1'
      TabOrder = 0
      OnClick = btnQ1_1Click
    end
  end
  object pnl3: TPanel
    Left = 480
    Top = 80
    Width = 460
    Height = 240
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Label2: TLabel
      Left = 250
      Top = 110
      Width = 111
      Height = 16
      Caption = 'Number of nights:'
    end
    object btnQ1_3: TButton
      Left = 20
      Top = 20
      Width = 200
      Height = 40
      Caption = 'QUESTION 1.3'
      TabOrder = 0
      OnClick = btnQ1_3Click
    end
    object cbxAccommodation: TCheckBox
      Left = 20
      Top = 80
      Width = 146
      Height = 17
      Caption = 'Accommodation?'
      TabOrder = 1
    end
    object pnlQ1_3: TPanel
      Left = 0
      Top = 200
      Width = 460
      Height = 40
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = 'pnlQ1_3'
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Georgia'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object sedNumNights: TSpinEdit
      Left = 250
      Top = 135
      Width = 121
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
    object rgpChaletOption: TRadioGroup
      Left = 20
      Top = 110
      Width = 200
      Height = 70
      Caption = 'Accommodation Options'
      Items.Strings = (
        'Chalet - sleeps 2'
        'Chalet - sleeps 4')
      TabOrder = 4
    end
  end
  object pnl5: TPanel
    Left = 480
    Top = 520
    Width = 460
    Height = 135
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object lblName: TLabel
      Left = 20
      Top = 72
      Width = 59
      Height = 16
      Caption = 'Surname:'
    end
    object btnQ1_5: TButton
      Left = 20
      Top = 20
      Width = 200
      Height = 40
      Caption = 'QUESTION 1.5'
      TabOrder = 0
      OnClick = btnQ1_5Click
    end
    object edtSurname: TEdit
      Left = 20
      Top = 94
      Width = 200
      Height = 24
      TabOrder = 1
    end
    object pnlQ1_5: TPanel
      Left = 260
      Top = 20
      Width = 200
      Height = 40
      BevelOuter = bvNone
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Georgia'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 340
    Width = 460
    Height = 160
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    object lblQ1_2A: TLabel
      Left = 20
      Top = 80
      Width = 80
      Height = 16
      Caption = 'PERIMETER:'
    end
    object lblQ1_2B: TLabel
      Left = 20
      Top = 110
      Width = 104
      Height = 16
      Caption = 'SURFACE AREA:'
    end
    object btnQ1_2: TButton
      Left = 20
      Top = 20
      Width = 200
      Height = 40
      Caption = 'QUESTION 1.2'
      TabOrder = 0
      OnClick = btnQ1_2Click
    end
  end
  object pnl4: TPanel
    Left = 480
    Top = 340
    Width = 460
    Height = 160
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    object Label1: TLabel
      Left = 20
      Top = 80
      Width = 60
      Height = 16
      Caption = 'Sightings:'
    end
    object btnQ1_4: TButton
      Left = 20
      Top = 20
      Width = 200
      Height = 40
      Caption = 'QUESTION 1.4'
      TabOrder = 0
      OnClick = btnQ1_4Click
    end
    object edtSightings: TEdit
      Left = 20
      Top = 105
      Width = 200
      Height = 24
      TabOrder = 1
      Text = 'EEBEBEEBLEELB'
    end
    object redQ1_4: TRichEdit
      Left = 260
      Top = 0
      Width = 200
      Height = 160
      Align = alRight
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
end
