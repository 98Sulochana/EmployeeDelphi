program Employee;

uses
  Vcl.Forms,
  MainU in 'MainU.pas' {MainF},
  DataU in 'DataU.pas' {DataM: TDataModule},
  EmployeeU in 'EmployeeU.pas' {EmployeeF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataM, DataM);
  Application.CreateForm(TMainF, MainF);
  Application.CreateForm(TEmployeeF, EmployeeF);
  Application.Run;
end.
