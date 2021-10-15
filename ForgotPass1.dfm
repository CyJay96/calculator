object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Forgot Password'
  ClientHeight = 184
  ClientWidth = 397
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Mes: TLabel
    Left = 56
    Top = 40
    Width = 296
    Height = 14
    Caption = 'Enter the "password" to access the password:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object EnterPass: TEdit
    Left = 136
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object OK: TButton
    Left = 296
    Top = 133
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'OK'
    TabOrder = 1
    OnClick = OKClick
  end
end
