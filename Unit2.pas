unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TfrmCadastro = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtNome: TEdit;
    edtEmail: TEdit;
    edtSenha: TEdit;
    edtCSenha: TEdit;
    Button1: TButton;
    Label7: TLabel;
    edtTelefone: TMaskEdit;
    edtCPF: TMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function validaForm():Boolean;
    procedure salvarDados();
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

uses Unit1, Unit4, UDM;

{$R *.dfm}

procedure TfrmCadastro.Button1Click(Sender: TObject);
begin
  if (validaForm()) then
  begin
    salvarDados();
    frmCadastro.Hide;
    frmInicio.Showmodal;
    frmCadastro.Close;
  end;
end;

function TfrmCadastro.validaForm():Boolean;
begin
  Result:= true;
  if edtNome.Text = '' then
  begin
    Showmessage('Nome invalido.');
    Result:= false;
    edtNome.SetFocus;
    Exit;
  end;

  if edtEmail.Text = '' then
  begin
    Showmessage('E-mail invalido.');
    Result:= false;
    edtEmail.SetFocus;
    Exit;
  end;

    if edtTelefone.Text = '' then
  begin
    Showmessage('Telefone invalido.');
    Result:= false;
    edtTelefone.SetFocus;
    Exit;
  end;

    if edtCPF.Text = '' then
  begin
    Showmessage('CPF invalido.');
    edtCPF.SetFocus;
    Exit;
  end;

    if (edtSenha.Text = '') or (edtSenha.Text <> edtCSenha.Text) then
  begin
    Showmessage('Senha invalida.');
    Result:= false;
    edtSenha.SetFocus;
    Exit;
  end;



end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
  edtNome.SetFocus;
end;

procedure TfrmCadastro.salvarDados;
begin
  DM.cdsUsuario.Append;
  DM.cdsUsuarioNome.Value := edtNome.Text;
  DM.cdsUsuarioEmail.Value := edtEmail.Text;
  DM.cdsUsuarioTelefone.Value := edtTelefone.Text;
  DM.cdsUsuarioCPF.Value := edtCPF.Text;
  DM.cdsUsuarioSenha.Value := edtSenha.Text;
  DM.cdsUsuario.Post;
  ShowMessage('Cadastro Efetuado com Sucesso!');
end;

end.
