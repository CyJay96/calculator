program Calculator;

uses
  Vcl.Forms,
  Calculator1 in 'Calculator1.pas' {Form1},
  PIN1 in 'PIN1.pas' {Form2},
  ForgotPass1 in 'ForgotPass1.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
