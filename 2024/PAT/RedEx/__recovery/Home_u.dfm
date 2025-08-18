object frmHome: TfrmHome
  Left = 0
  Top = 0
  Caption = 'RedEx'
  ClientHeight = 816
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object imgDiscover: TImage
    Left = 85
    Top = 711
    Width = 105
    Height = 98
    Stretch = True
    OnClick = imgDiscoverClick
  end
  object imgTraining: TImage
    Left = 257
    Top = 710
    Width = 105
    Height = 98
    Stretch = True
    OnClick = imgTrainingClick
  end
  object pnlTraining: TPanel
    Left = -4
    Top = 0
    Width = 449
    Height = 704
    TabOrder = 0
    object lblTraining: TLabel
      Left = 32
      Top = 24
      Width = 132
      Height = 37
      Caption = 'TRAINING'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnStart: TButton
      Left = 187
      Top = 504
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      OnClick = btnStartClick
    end
    object lstSchedule: TListBox
      Left = 49
      Top = 112
      Width = 168
      Height = 331
      ItemHeight = 15
      TabOrder = 1
      OnClick = lstScheduleClick
    end
    object memInfo: TMemo
      Left = 244
      Top = 112
      Width = 168
      Height = 331
      ReadOnly = True
      TabOrder = 2
    end
  end
  object pnlDiscover: TPanel
    Left = -4
    Top = 0
    Width = 449
    Height = 705
    TabOrder = 2
    object lblDiscover: TLabel
      Left = 24
      Top = 16
      Width = 131
      Height = 37
      Caption = 'DISCOVER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlPersonilization: TPanel
      Left = 4
      Top = 59
      Width = 445
      Height = 646
      TabOrder = 1
      object lblPersonilization: TLabel
        Left = 32
        Top = 91
        Width = 77
        Height = 15
        Caption = 'Personilization'
      end
      object memPersonalization: TMemo
        Left = 244
        Top = 112
        Width = 185
        Height = 281
        ReadOnly = True
        TabOrder = 0
      end
      object btnEdit: TButton
        Left = 183
        Top = 473
        Width = 75
        Height = 25
        Caption = 'Edit'
        TabOrder = 1
        OnClick = btnEditClick
      end
      object btnDelete: TButton
        Left = 287
        Top = 473
        Width = 75
        Height = 25
        Caption = 'Delete'
        TabOrder = 2
        OnClick = btnDeleteClick
      end
      object btnCreate: TButton
        Left = 85
        Top = 473
        Width = 75
        Height = 25
        Caption = 'Create'
        TabOrder = 3
        OnClick = btnCreateClick
      end
      object lstWorkouts: TListBox
        Left = 16
        Top = 112
        Width = 197
        Height = 281
        ItemHeight = 15
        TabOrder = 4
        OnClick = lstWorkoutsClick
      end
      object btnSave: TButton
        Left = 183
        Top = 521
        Width = 75
        Height = 25
        Caption = 'Save'
        TabOrder = 5
        OnClick = btnSaveClick
      end
    end
    object pnlWorkouts: TPanel
      Left = 4
      Top = 59
      Width = 445
      Height = 646
      TabOrder = 0
      object lblSelected: TLabel
        Left = 231
        Top = 83
        Width = 85
        Height = 15
        Caption = 'Active workouts'
      end
      object lblUnselected: TLabel
        Left = 24
        Top = 83
        Width = 100
        Height = 15
        Caption = 'Available workouts'
      end
      object lstSelected: TListBox
        Left = 231
        Top = 104
        Width = 177
        Height = 281
        ItemHeight = 15
        TabOrder = 0
        OnClick = lstSelectedClick
      end
      object lstUnselected: TListBox
        Left = 24
        Top = 104
        Width = 174
        Height = 281
        ItemHeight = 15
        TabOrder = 1
        OnClick = lstUnselectedClick
      end
      object memInformation: TMemo
        Left = 231
        Top = 413
        Width = 177
        Height = 153
        ReadOnly = True
        TabOrder = 2
      end
      object btnAdd: TButton
        Left = 24
        Top = 452
        Width = 75
        Height = 25
        Caption = 'Add'
        TabOrder = 3
        OnClick = btnAddClick
      end
      object btnRemove: TButton
        Left = 123
        Top = 452
        Width = 75
        Height = 25
        Caption = 'Remove'
        TabOrder = 4
        OnClick = btnRemoveClick
      end
      object btnPersonalize: TButton
        Left = 48
        Top = 504
        Width = 121
        Height = 25
        Caption = 'Personalize'
        TabOrder = 5
        OnClick = btnPersonalizeClick
      end
      object btnAdmin: TButton
        Left = 64
        Top = 552
        Width = 87
        Height = 25
        Caption = 'Admin'
        TabOrder = 6
        OnClick = btnAdminClick
      end
    end
  end
  object pnlAdmin: TPanel
    Left = -4
    Top = 0
    Width = 449
    Height = 705
    TabOrder = 1
    DesignSize = (
      449
      705)
    object lblAccounts: TLabel
      Left = 36
      Top = 38
      Width = 50
      Height = 15
      Caption = 'Accounts'
    end
    object lblDetails: TLabel
      Left = 235
      Top = 38
      Width = 35
      Height = 15
      Caption = 'Details'
    end
    object dbgAdmin1: TDBGrid
      Left = 36
      Top = 59
      Width = 181
      Height = 326
      Anchors = [akLeft, akTop, akRight]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = dbgAdmin1CellClick
    end
    object dbgAdmin2: TDBGrid
      Left = 235
      Top = 59
      Width = 177
      Height = 326
      Anchors = [akLeft, akTop, akRight]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = dbgAdmin2CellClick
    end
    object btnAccSearch: TButton
      Left = 36
      Top = 417
      Width = 75
      Height = 25
      Caption = 'Search'
      TabOrder = 2
      OnClick = btnAccSearchClick
    end
    object btnAccDelete: TButton
      Left = 142
      Top = 417
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 3
      OnClick = btnAccDeleteClick
    end
    object btnAdminEdit: TButton
      Left = 68
      Top = 471
      Width = 117
      Height = 25
      Caption = 'Account Edit'
      TabOrder = 4
      OnClick = btnAdminEditClick
    end
    object redOutput: TRichEdit
      Left = 235
      Top = 418
      Width = 177
      Height = 207
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
end
