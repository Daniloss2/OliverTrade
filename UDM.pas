unit UDM;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TDM = class(TDataModule)
    cdsUsuario: TClientDataSet;
    cdsUsuarioNome: TStringField;
    cdsUsuarioEmail: TStringField;
    cdsUsuarioTelefone: TStringField;
    cdsUsuarioCPF: TStringField;
    cdsUsuarioSenha: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    Nlogin:String;
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  cdsUsuario.CreateDataSet;
  cdsUsuario.Open;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  cdsUsuario.Close;
end;

end.
