object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Sell My Phone'
  ClientHeight = 390
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 179
    Height = 25
    Caption = 'SellMyPhone App'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 39
    Width = 168
    Height = 343
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 13
      Width = 61
      Height = 13
      Caption = 'Brand name:'
    end
    object Label3: TLabel
      Left = 24
      Top = 67
      Width = 71
      Height = 13
      Caption = 'Model number:'
    end
    object Label4: TLabel
      Left = 24
      Top = 129
      Width = 65
      Height = 13
      Caption = 'Owner name:'
    end
    object Label5: TLabel
      Left = 24
      Top = 250
      Width = 82
      Height = 13
      Caption = 'Requested price:'
    end
    object Label6: TLabel
      Left = 24
      Top = 191
      Width = 73
      Height = 13
      Caption = 'Purchase date:'
    end
    object cbxBrand: TComboBox
      Left = 24
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Select a Brand'
      Items.Strings = (
        'Hauwei'
        'Samsung'
        'IPhone')
    end
    object edtModel: TEdit
      Left = 24
      Top = 86
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtOwner: TEdit
      Left = 24
      Top = 148
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtPrice: TEdit
      Left = 24
      Top = 269
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object btnSave: TButton
      Left = 48
      Top = 296
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 4
      OnClick = btnSaveClick
    end
    object edtDate: TEdit
      Left = 24
      Top = 210
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'YYYY/MM/DD'
    end
  end
  object sgrPhones: TStringGrid
    Left = 182
    Top = 39
    Width = 396
    Height = 343
    ColCount = 3
    DefaultColWidth = 120
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    TabOrder = 1
  end
end
