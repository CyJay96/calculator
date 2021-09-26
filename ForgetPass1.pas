unit ForgetPass1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Math;

type
  TForm3 = class(TForm)
    Mes: TLabel;
    EnterPass: TEdit;
    OK: TButton;
    procedure OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  pass = '7724';
  dop_pass = 'пароль';

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.OKClick(Sender: TObject);
begin
  if EnterPass.Text = dop_pass then
    ShowMessage('Ваш пароль: ' + pass)
  else
    ShowMessage('Пароль неверный');
end;

end.
