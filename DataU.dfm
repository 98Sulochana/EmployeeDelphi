object DataM: TDataM
  OnCreate = DataModuleCreate
  Height = 202
  Width = 348
  object con1: TFDConnection
    Params.Strings = (
      'Database=empdetails'
      'User_Name=root'
      'Password=jami1998'
      'DriverID=MySQL')
    Connected = True
    Left = 80
    Top = 56
  end
  object qr1: TFDQuery
    Active = True
    Connection = con1
    SQL.Strings = (
      'select * from empdata')
    Left = 160
    Top = 56
    object qr1id: TFDAutoIncField
      Alignment = taCenter
      DisplayWidth = 8
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qr1name: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 40
      FieldName = 'name'
      Origin = '`name`'
      Size = 100
    end
    object qr1empId: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 17
      FieldName = 'empId'
      Origin = 'empId'
      Size = 50
    end
    object qr1nic: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 12
      FieldName = 'nic'
      Origin = 'nic'
    end
    object qr1cont: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 23
      FieldName = 'cont'
      Origin = 'cont'
      Size = 50
    end
    object qr1dob: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'dob'
      Origin = 'dob'
    end
    object qr1address: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 43
      FieldName = 'address'
      Origin = 'address'
      Size = 254
    end
  end
  object ds1: TDataSource
    AutoEdit = False
    DataSet = qr1
    Left = 232
    Top = 56
  end
end
