object MainF: TMainF
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 547
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object dg1: TDBGrid
    Left = 0
    Top = 41
    Width = 984
    Height = 506
    Align = alClient
    DataSource = DataM.ds1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'empId'
        Title.Alignment = taCenter
        Title.Caption = 'EmpID'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nic'
        Title.Alignment = taCenter
        Title.Caption = 'NIC'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cont'
        Title.Alignment = taCenter
        Title.Caption = 'Contact'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dob'
        Title.Alignment = taCenter
        Title.Caption = 'DOB'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'address'
        Title.Alignment = taCenter
        Title.Caption = 'Address'
        Width = 257
        Visible = True
      end>
  end
  object toppnl: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 980
    object exitbtn: TButton
      AlignWithMargins = True
      Left = 903
      Top = 4
      Width = 75
      Height = 33
      Margins.Left = 5
      Margins.Right = 5
      Align = alRight
      BiDiMode = bdLeftToRight
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnClick = exitbtnClick
      ExplicitLeft = 899
    end
    object searched: TEdit
      AlignWithMargins = True
      Left = 6
      Top = 4
      Width = 331
      Height = 33
      Margins.Left = 5
      Margins.Right = 5
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'Enter Name, EmpID, NIC here...'
      ExplicitHeight = 29
    end
    object addbtn: TButton
      AlignWithMargins = True
      Left = 648
      Top = 4
      Width = 75
      Height = 33
      Margins.Left = 5
      Margins.Right = 5
      Align = alRight
      Caption = 'Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = addbtnClick
      ExplicitLeft = 644
    end
    object editbtn: TButton
      AlignWithMargins = True
      Left = 733
      Top = 4
      Width = 75
      Height = 33
      Margins.Left = 5
      Margins.Right = 5
      Align = alRight
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = editbtnClick
      ExplicitLeft = 729
    end
    object deletebtn: TButton
      AlignWithMargins = True
      Left = 818
      Top = 4
      Width = 75
      Height = 33
      Margins.Left = 5
      Margins.Right = 5
      Align = alRight
      Caption = 'Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = deletebtnClick
      ExplicitTop = 2
    end
    object searchbtn: TButton
      AlignWithMargins = True
      Left = 563
      Top = 4
      Width = 75
      Height = 33
      Margins.Left = 5
      Margins.Right = 5
      Align = alRight
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = searchbtnClick
      ExplicitLeft = 559
    end
  end
end
