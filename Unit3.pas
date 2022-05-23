unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmMenu = class(TForm)
    lblMsg: TLabel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses UDM, Unit1;

{$R *.dfm}

procedure TfrmMenu.FormShow(Sender: TObject);
begin
  lblMsg.Caption := 'Olá, ' + DM.Nlogin; 
end;


end.
