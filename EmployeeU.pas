unit EmployeeU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TEmployeeF = class(TForm)
    ds1: TDataSource;
    Label1: TLabel;
    ided: TDBEdit;  // ID field
    DataSource1: TDataSource;
    Label2: TLabel;
    nameed: TDBEdit;
    Label3: TLabel;
    empided: TDBEdit;
    Label4: TLabel;
    niced: TDBEdit;
    Label5: TLabel;
    contacted: TDBEdit;
    Label6: TLabel;
    dobed: TDBEdit;
    Label7: TLabel;
    addressed: TDBEdit;
    bottompnl: TPanel;
    savebtn: TButton;
    closebtn: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    function ValidateFields: Boolean;
  public
    { Public declarations }
  end;

var
  EmployeeF: TEmployeeF;

implementation

{$R *.dfm}

uses DataU;

// Validate form fields
function TEmployeeF.ValidateFields: Boolean;
begin
  Result := True;
  if Trim(nameed.Text) = '' then
  begin
    ShowMessage('Name cannot be empty');
    nameed.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(empided.Text) = '' then
  begin
    ShowMessage('EmpID cannot be empty');
    empided.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(niced.Text) = '' then
  begin
    ShowMessage('NIC cannot be empty');
    niced.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(contacted.Text) = '' then
  begin
    ShowMessage('Contact No cannot be empty');
    contacted.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(dobed.Text) = '' then
  begin
    ShowMessage('DOB cannot be empty');
    dobed.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(addressed.Text) = '' then
  begin
    ShowMessage('Address cannot be empty');
    addressed.SetFocus;
    Result := False;
    Exit;
  end;
end;

// Save button function of form
procedure TEmployeeF.btn1Click(Sender: TObject);
begin
  if ValidateFields then
  begin
    if datam.qr1.State = dsInsert then
    begin
      datam.qr1.Post;
      ShowMessage('Employee details added successfully!');
    end
    else if datam.qr1.State = dsEdit then
    begin
      datam.qr1.Post;
      ShowMessage('Employee details updated successfully!');
    end;
    Close; // Close the form after showing the message
  end;
end;

// Close button function of form
procedure TEmployeeF.btn2Click(Sender: TObject);
begin
  if datam.qr1.State in [dsEdit, dsInsert] then
    datam.qr1.Cancel;
  Close;
end;

end.

