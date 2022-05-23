unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmInicio = class(TForm)
    edtEmail: TEdit;
    Button1: TButton;
    Label1: TLabel;
    edtSenha: TEdit;
    Label2: TLabel;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Label4: TLabel;
    Label3: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInicio: TfrmInicio;

implementation

uses Unit3, Unit2, UDM;

{$R *.dfm}

procedure TfrmInicio.Button2Click(Sender: TObject);
begin
    frmInicio.Hide;
    frmCadastro.Showmodal;
    frmInicio.Close;
end;

procedure TfrmInicio.Button1Click(Sender: TObject);
begin
  DM.cdsUsuario.Filtered := false;
  DM.cdsUsuario.Filter := 'Email = ''' + edtEmail.Text + '''';
  DM.cdsUsuario.Filtered := true;
  DM.cdsUsuario.First;

  if(DM.cdsUsuario.RecordCount > 0) then
  begin
    while not (DM.cdsUsuario.Eof) do
    begin
      if(DM.cdsUsuarioSenha.AsString = edtSenha.Text) then
      begin
        DM.Nlogin := DM.cdsUsuarioNome.AsString;
        frmInicio.Hide;
        frmMenu.Showmodal;
        frmInicio.Close;
        Exit;
      end;
      DM.cdsUsuario.Next;
    end;

  end;

    ShowMessage('Login invalido')
end;


end.









