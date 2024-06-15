unit MainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TMainF = class(TForm)
    dg1: TDBGrid;
    toppnl: TPanel;
    exitbtn: TButton;
    searched: TEdit;
    addbtn: TButton;
    editbtn: TButton;
    deletebtn: TButton;
    searchbtn: TButton;
    procedure exitbtnClick(Sender: TObject);
    procedure addbtnClick(Sender: TObject);
    procedure editbtnClick(Sender: TObject);
    procedure deletebtnClick(Sender: TObject);
    procedure searchbtnClick(Sender: TObject);
  private
    { Private declarations }
    function LocateEmployee(const SearchText: string): Boolean;
  public
    { Public declarations }
  end;

var
  MainF: TMainF;

implementation
uses DataU, EmployeeU;
{$R *.dfm}

// Exit button function
procedure TMainF.exitbtnClick(Sender: TObject);
begin
  Close;
end;

// 'Add' employee function
procedure TMainF.addbtnClick(Sender: TObject);
begin
  datam.qr1.Append;
  EmployeeF.ShowModal;
end;

// 'Edit' employee function
procedure TMainF.editbtnClick(Sender: TObject);
begin
  datam.qr1.Edit;
  EmployeeF.ShowModal;
end;

// 'Delete' employee function
procedure TMainF.deletebtnClick(Sender: TObject);
begin
  if Application.MessageBox('Are you sure you want to delete employee data?', 'Delete', MB_YESNO + MB_ICONQUESTION) = ID_YES then
  begin
    datam.qr1.Delete;
  end;
end;

// 'Search' employee by name,nic or empId function

procedure TMainF.searchbtnClick(Sender: TObject);
begin
  if searched.Text = '' then
    Exit;

  if not LocateEmployee(searched.Text) then
    ShowMessage('Employee Not Found!'); // Show an error message when employee details cannot be found
end;

function TMainF.LocateEmployee(const SearchText: string): Boolean;
begin
  Result := False;
  // Try to locate by name
  if DataM.qr1.Locate('name', SearchText, [loCaseInsensitive, loPartialKey]) then
    Exit(True);
  // Try to locate by NIC
  if DataM.qr1.Locate('NIC', SearchText, [loCaseInsensitive, loPartialKey]) then
    Exit(True);
  // Try to locate by EmpID
  if DataM.qr1.Locate('EmpID', SearchText, [loCaseInsensitive, loPartialKey]) then
    Exit(True);
end;

end.

