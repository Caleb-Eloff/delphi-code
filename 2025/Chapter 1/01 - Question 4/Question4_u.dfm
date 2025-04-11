object frmQuestion4: TfrmQuestion4
  Left = 0
  Top = 0
  Caption = 'Question 4'
  ClientHeight = 364
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcBirthdays: TPageControl
    Left = 8
    Top = 8
    Width = 305
    Height = 345
    ActivePage = tbsCheck
    TabOrder = 0
    object tbsCheck: TTabSheet
      Caption = 'Check Birthdays'
      object redBirthdays: TRichEdit
        Left = 3
        Top = 73
        Width = 286
        Height = 233
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object btnDisplay: TButton
        Left = 88
        Top = 42
        Width = 121
        Height = 25
        Caption = 'Display'
        TabOrder = 1
        OnClick = btnDisplayClick
      end
      object edtYear: TLabeledEdit
        Left = 40
        Top = 15
        Width = 73
        Height = 21
        EditLabel.Width = 22
        EditLabel.Height = 13
        EditLabel.Caption = 'Year'
        TabOrder = 2
      end
      object edtMonth: TLabeledEdit
        Left = 119
        Top = 15
        Width = 68
        Height = 21
        EditLabel.Width = 30
        EditLabel.Height = 13
        EditLabel.Caption = 'Month'
        TabOrder = 3
      end
      object edtDay: TLabeledEdit
        Left = 193
        Top = 15
        Width = 72
        Height = 21
        EditLabel.Width = 19
        EditLabel.Height = 13
        EditLabel.Caption = 'Day'
        TabOrder = 4
      end
    end
    object tbsAddBirthday: TTabSheet
      Caption = 'Add Birthday'
      ImageIndex = 1
      object edtName: TLabeledEdit
        Left = 19
        Top = 40
        Width = 150
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Name'
        TabOrder = 0
      end
      object edtSurname: TLabeledEdit
        Left = 19
        Top = 80
        Width = 150
        Height = 21
        EditLabel.Width = 42
        EditLabel.Height = 13
        EditLabel.Caption = 'Surname'
        TabOrder = 1
      end
      object edtGender: TLabeledEdit
        Left = 19
        Top = 120
        Width = 70
        Height = 21
        EditLabel.Width = 64
        EditLabel.Height = 13
        EditLabel.Caption = 'Gender (M/F)'
        TabOrder = 2
      end
      object edtBday: TLabeledEdit
        Left = 192
        Top = 40
        Width = 80
        Height = 21
        EditLabel.Width = 19
        EditLabel.Height = 13
        EditLabel.Caption = 'Day'
        TabOrder = 3
      end
      object edtBmonth: TLabeledEdit
        Left = 192
        Top = 80
        Width = 80
        Height = 21
        EditLabel.Width = 30
        EditLabel.Height = 13
        EditLabel.Caption = 'Month'
        TabOrder = 4
      end
      object edtByear: TLabeledEdit
        Left = 192
        Top = 120
        Width = 80
        Height = 21
        EditLabel.Width = 22
        EditLabel.Height = 13
        EditLabel.Caption = 'Year'
        TabOrder = 5
      end
      object btnAddBirthday: TButton
        Left = 72
        Top = 176
        Width = 153
        Height = 25
        Caption = 'Add Birthday'
        TabOrder = 6
        OnClick = btnAddBirthdayClick
      end
    end
  end
end
