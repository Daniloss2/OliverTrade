program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmInicio},
  Unit2 in 'Unit2.pas' {frmCadastro},
  Unit3 in 'Unit3.pas' {frmMenu},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmInicio, frmInicio);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
