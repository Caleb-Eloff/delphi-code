object frmQuestion2: TfrmQuestion2
  Left = 0
  Top = 0
  Caption = 'Question 2'
  ClientHeight = 439
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Consolas'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 18
  object pctHealth: TPageControl
    Left = 8
    Top = 8
    Width = 833
    Height = 394
    ActivePage = tabQ22
    TabOrder = 0
    object tabQ21: TTabSheet
      Caption = 'Question 2.1'
      object dbgTable: TDBGrid
        Left = 3
        Top = 3
        Width = 822
        Height = 182
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Consolas'
        TitleFont.Style = [fsBold]
      end
      object btn212: TButton
        Left = 146
        Top = 269
        Width = 75
        Height = 25
        Caption = '2.1.2'
        TabOrder = 1
        OnClick = btn212Click
      end
      object radSort211: TRadioGroup
        Left = 3
        Top = 193
        Width = 249
        Height = 62
        Caption = 'Question 2.1.1 Sort'
        Items.Strings = (
          'Join Date Newest first'
          'Customer A to Z')
        TabOrder = 2
        OnClick = radSort211Click
      end
      object btn213: TButton
        Left = 3
        Top = 317
        Width = 75
        Height = 25
        Caption = '2.1.3'
        TabOrder = 3
        OnClick = btn213Click
      end
      object redOutput: TRichEdit
        Left = 312
        Top = 191
        Width = 497
        Height = 154
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object edtSearch: TEdit
        Left = 3
        Top = 270
        Width = 121
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = 'DreS284'
      end
      object btn214: TButton
        Left = 146
        Top = 317
        Width = 75
        Height = 25
        Caption = '2.1.4'
        TabOrder = 6
        OnClick = btn214Click
      end
    end
    object tabQ22: TTabSheet
      Caption = 'Question 2.2'
      ImageIndex = 1
      object Label1: TLabel
        Left = 3
        Top = 247
        Width = 96
        Height = 18
        Caption = 'Member Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 131
        Top = 246
        Width = 48
        Height = 18
        Caption = 'E-mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 305
        Top = 246
        Width = 88
        Height = 18
        Caption = 'Date joined'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 416
        Top = 247
        Width = 96
        Height = 18
        Caption = 'Height in cm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 534
        Top = 247
        Width = 96
        Height = 18
        Caption = 'Weight in kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgData: TDBGrid
        Left = 3
        Top = 11
        Width = 817
        Height = 198
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Consolas'
        TitleFont.Style = [fsBold]
      end
      object btn221: TButton
        Left = 11
        Top = 215
        Width = 75
        Height = 25
        Caption = '2.2.1'
        TabOrder = 7
        OnClick = btn221Click
      end
      object btn222: TButton
        Left = 131
        Top = 215
        Width = 75
        Height = 25
        Caption = '2.2.2'
        TabOrder = 8
        OnClick = btn222Click
      end
      object btn223: TButton
        Left = 3
        Top = 311
        Width = 75
        Height = 25
        Caption = '2.2.3'
        TabOrder = 9
        OnClick = btn223Click
      end
      object edtName: TEdit
        Left = 3
        Top = 266
        Width = 110
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'Peter Williams'
      end
      object chkSmoke: TCheckBox
        Left = 644
        Top = 295
        Width = 97
        Height = 21
        Caption = 'Smoke'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 6
      end
      object edtEmail: TEdit
        Left = 131
        Top = 265
        Width = 154
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = 'pswilliams@gmail.com'
      end
      object sedWeight: TSpinEdit
        Left = 534
        Top = 266
        Width = 80
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxValue = 130
        MinValue = 45
        ParentFont = False
        TabOrder = 5
        Value = 75
      end
      object sedHeight: TSpinEdit
        Left = 416
        Top = 266
        Width = 63
        Height = 24
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxValue = 200
        MinValue = 100
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Value = 178
      end
      object edtDate: TEdit
        Left = 305
        Top = 265
        Width = 78
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '2018/10/30'
      end
      object cmbGender: TComboBox
        Left = 644
        Top = 266
        Width = 72
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        Text = 'Gender'
        Items.Strings = (
          'Female'
          'Male')
      end
    end
  end
  object btnRestoreDB: TButton
    Left = 8
    Top = 408
    Width = 105
    Height = 17
    Caption = 'Restore Database'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnRestoreDBClick
  end
end
