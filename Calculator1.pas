unit Calculator1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids, ShellAPI, Math;

type

  TMainMatrix = array [1 .. 1000, 1 .. 1001] of extended;
  TMatrix = array [1 .. 1000] of extended;
  TQuadr = array [1 .. 10] of extended;
  TQuadrStr = array [1 .. 10] of string;

  TForm1 = class(TForm)
    PageControl1: TPageControl;
    EquationsPage: TTabSheet;
    Dis1: TLabel;
    Dis1_1: TLabel;
    Equations1: TLabel;
    Equations2: TLabel;
    Equations3: TLabel;
    Equations4: TLabel;
    Dis1_2: TLabel;
    Dis1_3: TLabel;
    EnterN: TEdit;
    EnterM: TEdit;
    EnterNM: TButton;
    Values: TStringGrid;
    Salve: TButton;
    Clear1: TButton;
    Answer: TMemo;
    Error: TMemo;
    SquarePage: TTabSheet;
    Dis2: TLabel;
    ASqr: TLabel;
    BSqr: TLabel;
    CSqr: TLabel;
    EnterASqr: TEdit;
    EnterBSqr: TEdit;
    EnterCSqr: TEdit;
    GoSqr: TButton;
    X1Sqr: TLabel;
    X2Sqr: TLabel;
    AnX1Sqr: TEdit;
    AnX2Sqr: TEdit;
    Dis2Biq: TLabel;
    ABiq: TLabel;
    BBiq: TLabel;
    CBiq: TLabel;
    EnterABiq: TEdit;
    EnterBBiq: TEdit;
    EnterCBiq: TEdit;
    GoBiq: TButton;
    X1Biq: TLabel;
    X2Biq: TLabel;
    X3Biq: TLabel;
    X4Biq: TLabel;
    AnX1Biq: TEdit;
    AnX2Biq: TEdit;
    AnX3Biq: TEdit;
    AnX4Biq: TEdit;
    CalculatorPage: TTabSheet;
    Calc: TLabel;
    EnterNum1: TEdit;
    EnterNum2: TEdit;
    AnswerNum12: TEdit;
    AnswerNum34: TEdit;
    RadDeg: TButton;
    Ravno: TLabel;
    Plus: TButton;
    Minus: TButton;
    Multi: TButton;
    Division: TButton;
    Square: TButton;
    Power: TButton;
    Percent: TButton;
    Factorial: TButton;
    Logarifm: TButton;
    LnLogarifm: TButton;
    Exponenta: TButton;
    Nok: TButton;
    Nod: TButton;
    EnterPI: TButton;
    EnterE: TButton;
    EnterI: TButton;
    Clear2: TButton;
    TrigHypPage: TPageControl;
    TrigPage: TTabSheet;
    Sinus: TButton;
    Cosinus: TButton;
    Tangens: TButton;
    Cotangens: TButton;
    Secans: TButton;
    Cosecans: TButton;
    ArcSinus: TButton;
    ArcCosinus: TButton;
    ArcTangens: TButton;
    ArcCotangens: TButton;
    HypPage: TTabSheet;
    HypSh: TButton;
    HypCh: TButton;
    HypTh: TButton;
    HypCth: TButton;
    HypSech: TButton;
    HypCsch: TButton;
    HypArSh: TButton;
    HypArCh: TButton;
    HypArTh: TButton;
    HypArCth: TButton;
    HypArSch: TButton;
    HypArCsch: TButton;
    InfoPage: TTabSheet;
    dis4_1: TLabel;
    dis4_2: TLabel;
    dis4_3: TLabel;
    dis4_4: TLabel;
    dis4_5: TLabel;
    Developer1: TLabel;
    dis4_6: TLabel;
    Developer2: TLabel;
    dis4_7: TLabel;
    date: TLabel;
    link_vk1: TLabel;
    link_vk2: TLabel;
    link_down: TLabel;
    procedure RadDegClick(Sender: TObject);
    procedure EnterNMClick(Sender: TObject);
    procedure SalveClick(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure GoSqrClick(Sender: TObject);
    procedure GoBiqClick(Sender: TObject);
    procedure PlusClick(Sender: TObject);
    procedure MinusClick(Sender: TObject);
    procedure MultiClick(Sender: TObject);
    procedure DivisionClick(Sender: TObject);
    procedure SquareClick(Sender: TObject);
    procedure PowerClick(Sender: TObject);
    procedure PercentClick(Sender: TObject);
    procedure FactorialClick(Sender: TObject);
    procedure LogarifmClick(Sender: TObject);
    procedure LnLogarifmClick(Sender: TObject);
    procedure ExponentaClick(Sender: TObject);
    procedure NokClick(Sender: TObject);
    procedure NodClick(Sender: TObject);
    procedure EnterPIClick(Sender: TObject);
    procedure EnterEClick(Sender: TObject);
    procedure EnterIClick(Sender: TObject);
    procedure Clear2Click(Sender: TObject);
    procedure SinusClick(Sender: TObject);
    procedure CosinusClick(Sender: TObject);
    procedure TangensClick(Sender: TObject);
    procedure CotangensClick(Sender: TObject);
    procedure SecansClick(Sender: TObject);
    procedure CosecansClick(Sender: TObject);
    procedure ArcSinusClick(Sender: TObject);
    procedure ArcCosinusClick(Sender: TObject);
    procedure ArcTangensClick(Sender: TObject);
    procedure ArcCotangensClick(Sender: TObject);
    procedure ArcSecansClick(Sender: TObject);
    procedure ArcCosecansClick(Sender: TObject);
    procedure HypShClick(Sender: TObject);
    procedure HypChClick(Sender: TObject);
    procedure HypThClick(Sender: TObject);
    procedure HypCthClick(Sender: TObject);
    procedure HypSechClick(Sender: TObject);
    procedure HypCschClick(Sender: TObject);
    procedure HypArShClick(Sender: TObject);
    procedure HypArChClick(Sender: TObject);
    procedure HypArThClick(Sender: TObject);
    procedure HypArCthClick(Sender: TObject);
    procedure HypArSchClick(Sender: TObject);
    procedure HypArCschClick(Sender: TObject);

    procedure link_vk1Click(Sender: TObject);
    procedure link_vk1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure link_vk1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure link_vk2Click(Sender: TObject);
    procedure link_vk2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure link_vk2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure link_downClick(Sender: TObject);
    procedure link_downMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure link_downMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);


  private
    { Private declarations }
  public
    { Public declarations }
    function fact(a: extended): extended;
    function nod1(a, b: int64): int64;
    function nok1(a, b: int64): int64;
    function format(a: extended): string;
    function complex(a, b: extended): string;
    function complex_sqrt(a, b: extended): TQuadrStr;
  end;

const
  pi = 3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679;
  e = 2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274;
  radian = 180 / pi;

  alink = clRed;
  vlink = clPurple;

var
  Form1: TForm1;
  // equations
  ae: TMainMatrix;
  be, xe: TMatrix;
  i, j, n, m: int64;
  // calculator
  a, b, res: extended;

implementation

{$R *.dfm}

procedure TForm1.link_vk1Click(Sender: TObject); // LINK_VK1
begin
  ShellExecute(handle, 'open', 'https://vk.com/vk_voytko', nil,
    nil, SW_SHOW);
end;

procedure TForm1.link_vk1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer); // LINK_VK1
begin
  link_vk1.Font.Color := alink;
end;

procedure TForm1.link_vk1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer); // LINK_VK1
begin
  link_vk1.Font.Color := vlink;
end;


procedure TForm1.link_vk2Click(Sender: TObject); // LINK_VK2
begin
  ShellExecute(handle, 'open', 'https://vk.com/obozny_a', nil,
    nil, SW_SHOW);
end;


procedure TForm1.link_vk2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer); // LINK_VK2
begin
  link_vk2.Font.Color := alink;
end;

procedure TForm1.link_vk2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer); // LINK_VK2
begin
  link_vk2.Font.Color := vlink;
end;


procedure TForm1.link_downClick(Sender: TObject); // DOWNLOAD
begin
  ShellExecute(handle, 'open', 'https://cyjay96.github.io/webcalculator/', nil,
    nil, SW_SHOW);
end;

procedure TForm1.link_downMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer); // DOWNLOAD
begin
  link_down.Font.Color := alink;
end;

procedure TForm1.link_downMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer); // DOWNLOAD
begin
  link_down.Font.Color := vlink;
end;


function TForm1.fact(a: extended): extended; // !
begin
  if a = 1 then
    result := 1
  else
    result := a * fact(a - 1);
end;

function TForm1.nod1(a, b: int64): int64; // NOD
var
  c: int64;
begin
  repeat
    c := a mod b;
    a := b;
    b := c;
  until c = 0;
  result := a;
end;

function TForm1.nok1(a, b: int64): int64; // NOK
begin
  result := (a * b) div nod1(a, b);
end;

function TForm1.format(a: extended): string; // FORMAT_FLOAT
var
  s, Minus: string;
begin
  if (FloatToStr(a)[1] = '-') and (FloatToStr(a)[2] = '0') then
    Minus := '-'
  else
    Minus := '';

  s := FloatToStr(abs(a) - abs(int(a)));
  if StrToFloat(s[1]) = 0 then
    delete(s, 1, 2)
  else
    s := '0';

  s := s + '00000';

  if (StrToInt(s[4]) >= 5) and (StrToInt(s[3]) <> 9) then
  begin
    insert(IntToStr(StrToInt(s[3]) + 1), s, 3);
    delete(s, 4, s.length);
  end
  else
    delete(s, 4, s.length);

  if (s = '000') or (s = '00') or (s = '0') then
  begin
    if int(a) = 0 then
      result := FloatToStr(int(a))
    else
      result := Minus + FloatToStr(int(a));
  end
  else
    result := Minus + FloatToStr(int(a)) + ',' + s;
end;

function TForm1.complex(a, b: extended): string; // COMPLEX
begin
  if (a > 0) and (b > 0) and (b <> 1) and (b <> -1) then
    result := format(a) + ' + ' + format(abs(b)) + 'i'
  else if (a > 0) and (b < 0) and (b <> 1) and (b <> -1) then
    result := format(a) + ' - ' + format(abs(b)) + 'i'
  else if (a < 0) and (b > 0) and (b <> 1) and (b <> -1) then
    result := format(a) + ' + ' + format(abs(b)) + 'i'
  else if (a < 0) and (b < 0) and (b <> 1) and (b <> -1) then
    result := format(a) + ' - ' + format(abs(b)) + 'i'
  else if (a <> 0) and (b = 1) then
    result := format(a) + ' + i'
  else if (a <> 0) and (b = -1) then
    result := format(a) + ' - i'
  else if (a = 0) and (b = 1) then
    result := 'i'
  else if (a = 0) and (b = -1) then
    result := '-i'
  else if (a = 0) and (b <> 0) then
    result := format(b) + 'i'
  else if (a <> 0) and (b = 0) then
    result := format(a)
  else
    result := '0';
end;

function TForm1.complex_sqrt(a, b: extended): TQuadrStr; // COMPLEX_SQRT
var
  X: TQuadr;
  f: TQuadrStr;
begin
  X[1] := sqrt((sqrt(sqr(a) + sqr(b)) + a) / 2);
  X[2] := sqrt((sqrt(sqr(a) + sqr(b)) - a) / 2);

  f[1] := complex(X[1], X[2]);
  f[2] := complex(X[1], -X[2]);
  f[3] := '-' + complex(X[1], X[2]);
  f[4] := '-' + complex(X[1], -X[2]);

  result := f;
end;

procedure TForm1.RadDegClick(Sender: TObject); // RadDeg
begin
  if RadDeg.Caption = 'DEG' then
    RadDeg.Caption := 'RAD'
  else
    RadDeg.Caption := 'DEG';
end;

procedure TForm1.EnterNMClick(Sender: TObject); // ENTER N, M
begin
  try

    n := StrToInt(EnterN.Text);
    m := StrToInt(EnterM.Text);

    if ((n <= 1000) or (m <= 1000)) and (n = m) then
    begin
      Values.Enabled := true;
      Salve.Enabled := true;

      Values.Cells[0, 0] := 'n, m';

      for i := 1 to 1000 do
        Values.Cells[i, 0] := '';
      for j := 1 to 1000 do
        Values.Cells[0, j] := '';
      for i := 1 to 30 do
        for j := 1 to 30 do
          Values.Cells[i, j] := '';

      for i := 1 to n do
        Values.Cells[i, 0] := 'n' + IntToStr(i);
      Values.Cells[n + 1, 0] := 'bm';
      for j := 1 to m do
        Values.Cells[0, j] := 'm' + IntToStr(j);
    end
    else if n <> m then
      ShowMessage('We are not yet ready to solve the equations if N != M')
    else
      ShowMessage('The number of equations and variables should not exceed 1000');

  except
    on EConvertError do
      ShowMessage('Enter N and M')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.SalveClick(Sender: TObject); // SALVE
var
  k, f: int64;
  z, r, g, check: extended;
  check_bool: boolean;
begin
  try

    check := 0;
    check_bool := false;

    Answer.Enabled := true;
    Error.Enabled := true;
    Clear1.Enabled := true;

    for i := 1 to n do
      for j := 1 to n + 1 do
        ae[j, i] := StrToFloat(Values.Cells[j, i]);

    for i := 1 to n do // remember free members
      be[i] := ae[n + 1, i];

    for k := 1 to n do // straight Gaussian stroke
      for j := k + 1 to n do
      begin
        r := ae[k, j] / ae[k, k];
        for i := k to n do
          ae[i, j] := ae[i, j] - r * ae[i, k];
        be[j] := be[j] - r * be[k];
      end;

    for k := n downto 1 do // reverse Gaussian stroke
    begin
      r := 0;
      for j := k + 1 to n do
      begin
        g := ae[j, k] * xe[j];
        r := r + g;
      end;
      xe[k] := (be[k] - r) / ae[k, k];
    end;

    for i := 1 to n do
      Answer.Lines.Add('x[' + IntToStr(i) + '] = ' + FloatToStr(xe[i]));
    Answer.Lines.Add('');

    Error.Lines.Add('Check:');
    for j := 1 to n do
    begin
      for i := 1 to n do
        check := check + ae[i, j];
      if ae[i, j] = ae[n + 1, j] then
        check_bool := true;
    end;
    if check_bool then
      Error.Lines.Add('The decision is correct!')
    else
      Error.Lines.Add('The decision is wrong!');
    Error.Lines.Add('');

  except
    on EConvertError do
      ShowMessage('Enter the coefficients of the system')
    else
    begin
      Answer.Lines.Add('Something went wrong:');
      Answer.Lines.Add('Division by zero may have occurred');
      Answer.Lines.Add('Or the system is incompatible')
    end;
  end;
end;

procedure TForm1.Clear1Click(Sender: TObject); // CLEAR 1
var
  n, m: int64;
begin
  n := StrToInt(EnterN.Text);
  m := StrToInt(EnterM.Text);

  if n = m then
    for i := 1 to n + 1 do
      for j := 1 to m do
        Values.Cells[i, j] := '';

  Answer.Lines.Clear;
  Error.Lines.Clear;
end;

procedure TForm1.GoSqrClick(Sender: TObject); // Quadratic Equation
var
  a, b, c, d: extended;
  X: TQuadr;
begin
  try

    a := StrToFloat(EnterASqr.Text);
    b := StrToFloat(EnterBSqr.Text);
    c := StrToFloat(EnterCSqr.Text);

    d := sqr(b) - 4 * a * c;

    if d > 0 then
    begin
      X[1] := (-b + sqrt(d)) / (2 * a);
      X[2] := (-b - sqrt(d)) / (2 * a);

      AnX1Sqr.Text := format(X[1]);
      AnX2Sqr.Text := format(X[2]);
    end
    else if d = 0 then
    begin
      X[1] := -b / (2 * a);

      AnX1Sqr.Text := format(X[1]);
      AnX2Sqr.Text := '';
    end
    else
    begin
      X[1] := -b / (2 * a);
      X[2] := sqrt(-d) / (2 * a);

      AnX1Sqr.Text := complex(X[1], X[2]);
      AnX2Sqr.Text := complex(X[1], -X[2]);
    end;

  except
    on EConvertError do
      ShowMessage('Enter the coefficients of the equation')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.GoBiqClick(Sender: TObject); // Biquadritic Equation
var
  a, b, c, d: extended;
  X, t: TQuadr;
  f: TQuadrStr;
begin
  try

    a := StrToFloat(EnterABiq.Text);
    b := StrToFloat(EnterBBiq.Text);
    c := StrToFloat(EnterCBiq.Text);

    d := sqr(b) - 4 * a * c;

    if d > 0 then
    begin
      t[1] := (-1 * b + sqrt(d)) / (2 * a);
      t[2] := (-1 * b - sqrt(d)) / (2 * a);

      if (t[1] >= 0) and (t[2] >= 0) then
      begin
        X[1] := sqrt(t[1]);
        X[2] := -sqrt(t[1]);
        X[3] := sqrt(t[2]);
        X[4] := -sqrt(t[2]);

        AnX1Biq.Text := format(X[1]);
        AnX2Biq.Text := format(X[2]);
        AnX3Biq.Text := format(X[3]);
        AnX4Biq.Text := format(X[4]);
      end
      else if (t[1] >= 0) and (t[2] < 0) then
      begin
        X[1] := sqrt(t[1]);
        X[2] := -sqrt(t[1]);
        X[3] := sqrt(-t[2]);
        X[4] := -sqrt(-t[2]);

        AnX1Biq.Text := format(X[1]);
        AnX2Biq.Text := format(X[2]);
        AnX3Biq.Text := complex(0, X[3]);
        AnX4Biq.Text := complex(0, X[4]);
      end
      else if (t[1] < 0) and (t[2] >= 0) then
      begin
        X[1] := sqrt(-t[1]);
        X[2] := -sqrt(-t[1]);
        X[3] := sqrt(t[2]);
        X[4] := -sqrt(t[2]);

        AnX1Biq.Text := complex(0, X[1]);
        AnX2Biq.Text := complex(0, X[2]);
        AnX3Biq.Text := format(X[3]);
        AnX4Biq.Text := format(X[4]);
      end
      else
      begin
        X[1] := sqrt(-t[1]);
        X[2] := -sqrt(-t[1]);
        X[3] := sqrt(-t[2]);
        X[4] := -sqrt(-t[2]);

        AnX1Biq.Text := complex(0, X[1]);
        AnX2Biq.Text := complex(0, X[2]);
        AnX3Biq.Text := complex(0, X[3]);
        AnX4Biq.Text := complex(0, X[4]);
      end;
    end
    else if d = 0 then
    begin
      t[1] := -b / (2 * a);

      if t[1] >= 0 then
      begin
        X[1] := sqrt(t[1]);
        X[2] := -sqrt(t[1]);

        AnX1Biq.Text := format(X[1]);
        AnX2Biq.Text := format(X[2]);
        AnX3Biq.Text := '';
        AnX4Biq.Text := '';
      end
      else
      begin
        X[1] := sqrt(-t[1]);
        X[2] := -sqrt(-t[1]);

        AnX1Biq.Text := complex(0, X[1]);
        AnX2Biq.Text := complex(0, X[2]);
        AnX3Biq.Text := '';
        AnX4Biq.Text := '';
      end
    end
    else
    begin
      X[1] := -b / (2 * a);
      X[2] := sqrt(-d) / (2 * a);

      f := complex_sqrt(X[1], X[2]);

      AnX1Biq.Text := f[1];
      AnX2Biq.Text := f[2];
      AnX3Biq.Text := f[3];
      AnX4Biq.Text := f[4];
    end;

  except
    on EConvertError do
      ShowMessage('Enter the coefficients of the equation')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.PlusClick(Sender: TObject); // +
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    a := StrToFloat(EnterNum1.Text);
    b := StrToFloat(EnterNum2.Text);
    AnswerNum12.Text := FloatToStr(a + b);

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.MinusClick(Sender: TObject); // -
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    a := StrToFloat(EnterNum1.Text);
    b := StrToFloat(EnterNum2.Text);
    AnswerNum12.Text := FloatToStr(a - b);

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.MultiClick(Sender: TObject); // *
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    a := StrToFloat(EnterNum1.Text);
    b := StrToFloat(EnterNum2.Text);
    AnswerNum12.Text := FloatToStr(a * b);

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.DivisionClick(Sender: TObject); // /
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    a := StrToFloat(EnterNum1.Text);
    b := StrToFloat(EnterNum2.Text);
    AnswerNum12.Text := FloatToStr(a / b);

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.SquareClick(Sender: TObject); // √
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    a := StrToFloat(EnterNum1.Text);
    b := StrToFloat(EnterNum2.Text);
    if (trunc(b) mod 2) = 0 then
    begin
      AnswerNum12.Text := FloatToStr(exp(ln(a) / b));
      AnswerNum34.Text := FloatToStr(-exp(ln(a) / b));
    end
    else
      AnswerNum12.Text := FloatToStr(exp(ln(a) / b));

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.PowerClick(Sender: TObject); // ^
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    a := StrToFloat(EnterNum1.Text);
    b := StrToFloat(EnterNum2.Text);
    AnswerNum12.Text := FloatToStr(exp(ln(a) * b));

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.PercentClick(Sender: TObject); // %
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    a := StrToFloat(EnterNum1.Text);
    b := StrToFloat(EnterNum2.Text);
    AnswerNum12.Text := FloatToStr(a * (b / 100));

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.FactorialClick(Sender: TObject); // !
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    res := 1;
    if EnterNum1.Text = '' then
    begin
      b := StrToFloat(EnterNum2.Text);
      if (b >= 0) and (frac(b) = 0) then
        AnswerNum12.Text := FloatToStr(fact(b))
      else if (b < 0) and (frac(b) = 0) then
        ShowMessage('The value must be greater than or equal to zero')
      else if (b >= 0) and (frac(b) <> 0) then
        ShowMessage('The value must be an integer')
      else
        ShowMessage
          ('The value must be an integer and '#13' is greater than or equal to zero');
    end
    else
    begin
      a := StrToFloat(EnterNum1.Text);
      if (a >= 0) and (frac(a) = 0) then
        AnswerNum12.Text := FloatToStr(fact(a))
      else if (a < 0) and (frac(a) = 0) then
        ShowMessage('The value must be greater than or equal to zero')
      else if (a >= 0) and (frac(a) <> 0) then
        ShowMessage('The value must be an integer')
      else
        ShowMessage
          ('The value must be an integer and '#13' is greater than or equal to zero');
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.LogarifmClick(Sender: TObject); // LOG
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    a := StrToFloat(EnterNum1.Text);
    b := StrToFloat(EnterNum2.Text);
    AnswerNum12.Text := FloatToStr(LogN(a, b))

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.LnLogarifmClick(Sender: TObject); // LN
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if EnterNum1.Text = '' then
    begin
      b := StrToFloat(EnterNum2.Text);
      if b > 0 then
        AnswerNum12.Text := FloatToStr(ln(b))
      else
        ShowMessage('The value must be greater than zero');
    end
    else
    begin
      a := StrToFloat(EnterNum1.Text);
      if a > 0 then
        AnswerNum12.Text := FloatToStr(ln(a))
      else
        ShowMessage('The value must be greater than zero');
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.ExponentaClick(Sender: TObject); // EXP
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if EnterNum1.Text = '' then
    begin
      b := StrToFloat(EnterNum2.Text);
      AnswerNum12.Text := FloatToStr(exp(b));
    end
    else
    begin
      a := StrToFloat(EnterNum1.Text);
      AnswerNum12.Text := FloatToStr(exp(a));
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.NokClick(Sender: TObject); // NOK
var
  a, b, c: int64;
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    a := StrToInt(EnterNum1.Text);
    b := StrToInt(EnterNum2.Text);

    if (a > 0) and (b > 0) then
      AnswerNum12.Text := IntToStr(nok1(a, b))
    else
      ShowMessage('The values must be greater than and equal to zero');

  except
    on EConvertError do
      ShowMessage('Enter integers greater than or equal to zero')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.NodClick(Sender: TObject); // NOD
var
  a, b, c: int64;
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    a := StrToInt(EnterNum1.Text);
    b := StrToInt(EnterNum2.Text);

    if (a > 0) and (b > 0) then
      AnswerNum12.Text := IntToStr(nod1(a, b))
    else
      ShowMessage('The values must be greater than and equal to zero');

  except
    on EConvertError do
      ShowMessage('Enter integers greater than or equal to zero')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.EnterPIClick(Sender: TObject); // ENTER PI
begin
  AnswerNum12.Text := '';
  AnswerNum34.Text := '';

  if EnterNum1.Text = '' then
    EnterNum1.Text := '3,1415926536'
  else if EnterNum2.Text = '' then
    EnterNum2.Text := '3,1415926536'
  else if (EnterNum1.Text <> '') and (EnterNum2.Text <> '') then
    EnterNum1.Text := '3,1415926536'
  else
    EnterNum2.Text := '3,1415926526';
end;

procedure TForm1.EnterEClick(Sender: TObject); // ENTER E
begin
  AnswerNum12.Text := '';
  AnswerNum34.Text := '';

  if EnterNum1.Text = '' then
    EnterNum1.Text := '2,7182818285'
  else if EnterNum2.Text = '' then
    EnterNum2.Text := '2,7182818285'
  else if (EnterNum1.Text <> '') and (EnterNum2.Text <> '') then
    EnterNum1.Text := '2,7182818285'
  else
    EnterNum2.Text := '2,7182818285';
end;

procedure TForm1.EnterIClick(Sender: TObject); // ENTER I
begin
  AnswerNum12.Text := '';
  AnswerNum34.Text := '';

  if EnterNum1.Text = '' then
    EnterNum1.Text := '-1'
  else if EnterNum2.Text = '' then
    EnterNum2.Text := '-1'
  else if (EnterNum1.Text <> '') and (EnterNum2.Text <> '') then
    EnterNum1.Text := '-1'
  else
    EnterNum2.Text := '-1';
end;

procedure TForm1.Clear2Click(Sender: TObject); // CLEAR 2
begin
  EnterNum1.Text := '';
  EnterNum2.Text := '';
  AnswerNum12.Text := '';
  AnswerNum34.Text := '';
end;

procedure TForm1.SinusClick(Sender: TObject); // SIN
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(sin(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(sin(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(sin(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(sin(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.CosinusClick(Sender: TObject); // COS
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(cos(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(cos(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(cos(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(cos(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.TangensClick(Sender: TObject); // TG
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(tan(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(tan(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(tan(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(tan(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.CotangensClick(Sender: TObject); // CTG
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(cot(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(cot(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(cot(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(cot(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.SecansClick(Sender: TObject); // SEC
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(sec(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(sec(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(sec(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(sec(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.CosecansClick(Sender: TObject); // COSEC
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(csc(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(csc(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(csc(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(csc(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.ArcSinusClick(Sender: TObject); // ARCSIN
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(arcsin(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(arcsin(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(arcsin(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(arcsin(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.ArcCosinusClick(Sender: TObject); // ARCCOS
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(arccos(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(arccos(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(arccos(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(arccos(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.ArcTangensClick(Sender: TObject); // ARCTG
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(arctan(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(arctan(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(arctan(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(arctan(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.ArcCotangensClick(Sender: TObject); // ARCCTG
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(arccot(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(arccot(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(arccot(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(arccot(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.ArcSecansClick(Sender: TObject); // ARCSEC
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(arcsec(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(arcsec(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(arcsec(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(arcsec(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.ArcCosecansClick(Sender: TObject); // ARCCOSEC
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(arccsc(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(arccsc(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(arccsc(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(arccsc(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.HypShClick(Sender: TObject); // SH
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(sinh(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(sinh(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(sinh(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(sinh(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.HypChClick(Sender: TObject); // CH
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(cosh(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(cosh(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(cosh(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(cosh(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.HypThClick(Sender: TObject); // TH
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(tanh(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(tanh(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(tanh(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(tanh(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.HypCthClick(Sender: TObject); // CTH
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(coth(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(coth(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(coth(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(coth(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.HypSechClick(Sender: TObject); // SECH
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(sech(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(sech(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(sech(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(sech(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.HypCschClick(Sender: TObject); // CSCH
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(csch(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(csch(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(csch(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(csch(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.HypArShClick(Sender: TObject); // ARSH
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(arcsinh(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(arcsinh(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(arcsinh(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(arcsinh(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.HypArChClick(Sender: TObject); // ARCH
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(arccosh(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(arccosh(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(arccosh(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(arccosh(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.HypArThClick(Sender: TObject); // ARTH
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(arctanh(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(arctanh(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(arctanh(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(arctanh(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.HypArCthClick(Sender: TObject); // ARCTH
begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(arccoth(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(arccoth(a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(arccoth(b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(arccoth(a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.HypArSchClick(Sender: TObject); // ARSCH

// arsch x = +- ln((1 + sqrt(1 - x^2)) / x)

begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        AnswerNum12.Text := FloatToStr(ln((1 + sqrt(1 - sqr(b))) / b));
        AnswerNum34.Text := FloatToStr(-ln((1 + sqrt(1 - sqr(b))) / b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        AnswerNum12.Text := FloatToStr(ln((1 + sqrt(1 - sqr(a))) / a));
        AnswerNum34.Text := FloatToStr(-ln((1 + sqrt(1 - sqr(a))) / a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        AnswerNum12.Text := FloatToStr(ln((1 + sqrt(1 - sqr(b))) / b));
        AnswerNum34.Text := FloatToStr(-ln((1 + sqrt(1 - sqr(b))) / b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        AnswerNum12.Text := FloatToStr(ln((1 + sqrt(1 - sqr(a))) / a));
        AnswerNum34.Text := FloatToStr(-ln((1 + sqrt(1 - sqr(a))) / a));
      end
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

procedure TForm1.HypArCschClick(Sender: TObject); // ARCSCH

// arcsch x = ln((1 - sqrt(1 + x^2)) / x), x < 0
// = ln((1 + sqrt(1 + x^2)) / x), x > 0

begin
  try

    AnswerNum12.Text := '';
    AnswerNum34.Text := '';

    if RadDeg.Caption = 'DEG' then
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text) / radian;
        if b < 0 then
          AnswerNum12.Text := FloatToStr(ln((1 - sqrt(1 + sqr(b))) / b))
        else
          AnswerNum12.Text := FloatToStr(ln((1 + sqrt(1 + sqr(b))) / b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text) / radian;
        if a < 0 then
          AnswerNum12.Text := FloatToStr(ln((1 - sqrt(1 + sqr(a))) / a))
        else
          AnswerNum12.Text := FloatToStr(ln((1 + sqrt(1 + sqr(a))) / a));
      end
    else
    begin
      if EnterNum1.Text = '' then
      begin
        b := StrToFloat(EnterNum2.Text);
        if b < 0 then
          AnswerNum12.Text := FloatToStr(ln((1 - sqrt(1 + sqr(b))) / b))
        else
          AnswerNum12.Text := FloatToStr(ln((1 + sqrt(1 + sqr(b))) / b));
      end
      else
      begin
        a := StrToFloat(EnterNum1.Text);
        if a < 0 then
          AnswerNum12.Text := FloatToStr(ln((1 - sqrt(1 + sqr(a))) / a))
        else
          AnswerNum12.Text := FloatToStr(ln((1 + sqrt(1 + sqr(a))) / a));
      end;
    end;

  except
    on EConvertError do
      ShowMessage('Enter the numbers')
    else
      ShowMessage('Something went wrong');
  end;
end;

end.