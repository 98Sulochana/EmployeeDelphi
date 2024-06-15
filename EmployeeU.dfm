object EmployeeF: TEmployeeF
  Left = 10
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Employee'
  ClientHeight = 377
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Label1: TLabel
    Left = 10
    Top = 8
    Width = 16
    Height = 20
    Caption = 'ID'
    FocusControl = ided
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 56
    Width = 42
    Height = 20
    Caption = 'Name'
    FocusControl = nameed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 104
    Width = 47
    Height = 20
    Caption = 'EmpID'
    FocusControl = empided
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 10
    Top = 152
    Width = 26
    Height = 20
    Caption = 'NIC'
    FocusControl = niced
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 10
    Top = 200
    Width = 54
    Height = 20
    Caption = 'Contact'
    FocusControl = contacted
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 10
    Top = 248
    Width = 32
    Height = 20
    Caption = 'DOB'
    FocusControl = dobed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 10
    Top = 296
    Width = 57
    Height = 20
    Caption = 'Address'
    FocusControl = addressed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ided: TDBEdit
    Left = 80
    Top = 8
    Width = 300
    Height = 23
    DataField = 'id'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
  end
  object nameed: TDBEdit
    Left = 80
    Top = 53
    Width = 300
    Height = 23
    DataField = 'name'
    DataSource = DataSource1
    TabOrder = 1
  end
  object empided: TDBEdit
    Left = 80
    Top = 101
    Width = 300
    Height = 23
    DataField = 'empId'
    DataSource = DataSource1
    TabOrder = 2
  end
  object niced: TDBEdit
    Left = 80
    Top = 149
    Width = 300
    Height = 23
    DataField = 'nic'
    DataSource = DataSource1
    TabOrder = 3
  end
  object contacted: TDBEdit
    Left = 80
    Top = 197
    Width = 300
    Height = 23
    DataField = 'cont'
    DataSource = DataSource1
    TabOrder = 4
  end
  object dobed: TDBEdit
    Left = 80
    Top = 245
    Width = 300
    Height = 23
    Hint = 'yyyy-mm-dd'
    DataField = 'dob'
    DataSource = DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object addressed: TDBEdit
    Left = 80
    Top = 293
    Width = 300
    Height = 23
    DataField = 'address'
    DataSource = DataSource1
    TabOrder = 6
  end
  object bottompnl: TPanel
    Left = 0
    Top = 336
    Width = 401
    Height = 41
    Align = alBottom
    TabOrder = 7
    ExplicitTop = 324
    ExplicitWidth = 393
  end
  object savebtn: TButton
    Left = 80
    Top = 344
    Width = 130
    Height = 25
    Caption = 'Save'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btn1Click
  end
  object closebtn: TButton
    Left = 250
    Top = 344
    Width = 130
    Height = 25
    Cancel = True
    Caption = 'Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btn2Click
  end
  object ds1: TDataSource
    AutoEdit = False
    Left = 584
    Top = 65432
  end
  object DataSource1: TDataSource
    DataSet = DataM.qr1
    Left = 16
    Top = 328
  end
end
