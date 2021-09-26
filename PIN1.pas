unit PIN1;

interface

uses
  Calculator1, ForgetPass1,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Math;

type
  TForm2 = class(TForm)
    EnterPass2: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    b7: TButton;
    b8: TButton;
    b9: TButton;
    b0: TButton;
    Check1: TButton;
    Reset1: TButton;
    ForgetPass: TButton;
    Fon: TImage;
    EnterPass1: TLabel;
    Hello: TLabel;
    Answer: TEdit;
    Check2: TButton;
    Reset2: TButton;
    Question: TLabel;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure b6Click(Sender: TObject);
    procedure b7Click(Sender: TObject);
    procedure b8Click(Sender: TObject);
    procedure b9Click(Sender: TObject);
    procedure b0Click(Sender: TObject);
    procedure Check1Click(Sender: TObject);
    procedure Reset1Click(Sender: TObject);
    procedure ForgetPassClick(Sender: TObject);
    procedure Check2Click(Sender: TObject);
    procedure Reset2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  pass = '7724';

var
  Form2: TForm2;
  EnterPass, s1, s2: string;
  a, b: int64;
  i, j: int64;

implementation

{$R *.dfm}

procedure TForm2.b1Click(Sender: TObject); // 1
begin
  if EnterPass2.Enabled = true then
  begin
    EnterPass := EnterPass + '1';
    EnterPass2.Text := EnterPass2.Text + '*';
  end
  else if Answer.Enabled = true then
    Answer.Text := Answer.Text + '1';
end;

procedure TForm2.b2Click(Sender: TObject); // 2
begin
  if EnterPass2.Enabled = true then
  begin
    EnterPass := EnterPass + '2';
    EnterPass2.Text := EnterPass2.Text + '*';
  end
  else if Answer.Enabled = true then
    Answer.Text := Answer.Text + '2';
end;

procedure TForm2.b3Click(Sender: TObject); // 3
begin
  if EnterPass2.Enabled = true then
  begin
    EnterPass := EnterPass + '3';
    EnterPass2.Text := EnterPass2.Text + '*';
  end
  else if Answer.Enabled = true then
    Answer.Text := Answer.Text + '3';
end;

procedure TForm2.b4Click(Sender: TObject); // 4
begin
  if EnterPass2.Enabled = true then
  begin
    EnterPass := EnterPass + '4';
    EnterPass2.Text := EnterPass2.Text + '*';
  end
  else if Answer.Enabled = true then
    Answer.Text := Answer.Text + '4';
end;

procedure TForm2.b5Click(Sender: TObject); // 5
begin
  if EnterPass2.Enabled = true then
  begin
    EnterPass := EnterPass + '5';
    EnterPass2.Text := EnterPass2.Text + '*';
  end
  else if Answer.Enabled = true then
    Answer.Text := Answer.Text + '5';
end;

procedure TForm2.b6Click(Sender: TObject); // 6
begin
  if EnterPass2.Enabled = true then
  begin
    EnterPass := EnterPass + '6';
    EnterPass2.Text := EnterPass2.Text + '*';
  end
  else if Answer.Enabled = true then
    Answer.Text := Answer.Text + '6';
end;

procedure TForm2.b7Click(Sender: TObject); // 7
begin
  if EnterPass2.Enabled = true then
  begin
    EnterPass := EnterPass + '7';
    EnterPass2.Text := EnterPass2.Text + '*';
  end
  else if Answer.Enabled = true then
    Answer.Text := Answer.Text + '7';
end;

procedure TForm2.b8Click(Sender: TObject); // 8
begin
  if EnterPass2.Enabled = true then
  begin
    EnterPass := EnterPass + '8';
    EnterPass2.Text := EnterPass2.Text + '*';
  end
  else if Answer.Enabled = true then
    Answer.Text := Answer.Text + '8';
end;

procedure TForm2.b9Click(Sender: TObject); // 9
begin
  if EnterPass2.Enabled = true then
  begin
    EnterPass := EnterPass + '9';
    EnterPass2.Text := EnterPass2.Text + '*';
  end
  else if Answer.Enabled = true then
    Answer.Text := Answer.Text + '9';
end;

procedure TForm2.b0Click(Sender: TObject); // 0
begin
  if EnterPass2.Enabled = true then
  begin
    EnterPass := EnterPass + '0';
    EnterPass2.Text := EnterPass2.Text + '*';
  end
  else if Answer.Enabled = true then
    Answer.Text := Answer.Text + '0';
end;

procedure TForm2.ForgetPassClick(Sender: TObject); // FORGET PASS
begin
  Form3.Show;
end;

procedure TForm2.Check1Click(Sender: TObject); // CHECK1
begin
  if EnterPass = pass then
    Form1.Show
  else if EnterPass2.Text = '' then
    ShowMessage('Вы ничего не ввели')
  else
  begin
    BorderIcons := [];
    EnterPass2.Enabled := false;
    Check1.Enabled := false;
    Reset1.Enabled := false;
    Answer.Enabled := true;
    Check2.Enabled := true;
    Reset2.Enabled := true;
    j := 10;
    a := random(14) + 2;
    b := random(14) + 2;
    Hello.Caption := 'Решите ' + IntToStr(j) + ' примеров';
    Question.Caption := 'Сколько будет ' + IntToStr(a) + ' * ' + IntToStr(b);
  end;
end;

procedure TForm2.Reset1Click(Sender: TObject); // RESET1
begin
  s1 := EnterPass;
  EnterPass := '';
  EnterPass2.Text := '';
  for i := 1 to length(s1) - 1 do
    EnterPass := EnterPass + s1[i];
  for i := 1 to length(EnterPass) do
    EnterPass2.Text := EnterPass2.Text + '*';
end;

procedure TForm2.Check2Click(Sender: TObject); // CHECK2
begin
  if Answer.Text = IntToStr(a * b) then
  begin
    dec(j);
    Answer.Text := '';
    Hello.Caption := 'Решите ' + IntToStr(j) + ' примеров';
    a := random(14) + 2;
    b := random(14) + 2;
    Question.Caption := 'Сколько будет ' + IntToStr(a) + ' * ' + IntToStr(b);
    if j = 0 then
    begin
      BorderIcons := [biSystemMenu, biMinimize];
      EnterPass2.Enabled := true;
      Check1.Enabled := true;
      Reset1.Enabled := true;
      Hello.Caption := '';
      Question.Caption := '';
      Answer.Text := '';
      Answer.Enabled := false;
      Check2.Enabled := false;
      Reset2.Enabled := false;
    end;
  end
  else if Answer.Text = '' then
    ShowMessage('Вы ничего не ввели')
  else
  begin
    inc(j);
    Answer.Text := '';
    Hello.Caption := 'Решите ' + IntToStr(j) + ' примеров';
    a := random(14) + 2;
    b := random(14) + 2;
    Question.Caption := 'Сколько будет ' + IntToStr(a) + ' * ' + IntToStr(b);
  end;
end;

procedure TForm2.Reset2Click(Sender: TObject); // RESET2
begin
  s2 := Answer.Text;
  Answer.Text := '';
  for i := 1 to length(s2) - 1 do
    Answer.Text := Answer.Text + s2[i];
end;

end.
