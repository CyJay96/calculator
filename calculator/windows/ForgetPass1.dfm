object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Forget Password'
  ClientHeight = 184
  ClientWidth = 397
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Mes: TLabel
    Left = 64
    Top = 40
    Width = 261
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100' '#1076#1083#1103' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1076#1086#1089#1090#1091#1087#1072' '#1082' '#1087#1072#1088#1086#1083#1102':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EnterPass: TEdit
    Left = 128
    Top = 80
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object OK: TButton
    Left = 296
    Top = 133
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = #1054#1050
    TabOrder = 1
    OnClick = OKClick
  end
end
