object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088'++'
  ClientHeight = 512
  ClientWidth = 539
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 539
    Height = 512
    ActivePage = EquationsPage
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    object EquationsPage: TTabSheet
      AlignWithMargins = True
      Caption = #1057#1080#1089#1090#1077#1084#1072' '#1091#1088#1072#1074#1085#1077#1085#1080#1081
      object Dis1: TLabel
        Left = 16
        Top = 16
        Width = 193
        Height = 13
        Caption = #1055#1088#1077#1086#1073#1088#1072#1079#1091#1081#1090#1077' '#1089#1080#1089#1090#1077#1084#1091' '#1083#1080#1085#1077#1081#1085#1099#1093
      end
      object Equations1: TLabel
        Left = 16
        Top = 50
        Width = 194
        Height = 14
        Caption = 'a11x1 + a12x2 + ... + a1nxn = b1,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Equations2: TLabel
        Left = 16
        Top = 70
        Width = 194
        Height = 14
        Caption = 'a21x1 + a22x2 + ... + a2nxn = b2,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Equations3: TLabel
        Left = 16
        Top = 88
        Width = 12
        Height = 14
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Equations4: TLabel
        Left = 16
        Top = 107
        Width = 202
        Height = 14
        Caption = 'am1x1 + am2x2 + ... + amnxn = bm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Dis1_2: TLabel
        Left = 286
        Top = 16
        Width = 198
        Height = 13
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1093
      end
      object Dis1_3: TLabel
        Left = 286
        Top = 35
        Width = 172
        Height = 13
        Caption = #1080' '#1091#1088#1072#1074#1085#1077#1085#1080#1081' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086':'
      end
      object Dis1_1: TLabel
        Left = 16
        Top = 31
        Width = 203
        Height = 13
        Caption = #1072#1083#1075#1077#1073#1088#1072#1080#1095#1077#1089#1082#1080#1093' '#1091#1088#1072#1074#1085#1077#1085#1080#1081' '#1082' '#1074#1080#1076#1091':'
      end
      object EnterN: TEdit
        Left = 312
        Top = 63
        Width = 65
        Height = 21
        Color = clGradientInactiveCaption
        NumbersOnly = True
        TabOrder = 0
      end
      object EnterM: TEdit
        Left = 393
        Top = 63
        Width = 65
        Height = 21
        Color = clGradientInactiveCaption
        NumbersOnly = True
        TabOrder = 1
      end
      object EnterNM: TButton
        Left = 348
        Top = 94
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #1054#1050
        TabOrder = 3
        OnClick = EnterNMClick
      end
      object Values: TStringGrid
        Left = 16
        Top = 144
        Width = 481
        Height = 169
        Color = clCream
        ColCount = 1001
        Enabled = False
        RowCount = 1001
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 2
        ColWidths = (
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64)
        RowHeights = (
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24)
      end
      object Salve: TButton
        Left = 220
        Top = 322
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #1056#1077#1096#1080#1090#1100
        Enabled = False
        TabOrder = 4
        OnClick = SalveClick
      end
      object Answer: TMemo
        Left = 16
        Top = 355
        Width = 241
        Height = 89
        Color = clWhite
        Enabled = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object Clear1: TButton
        Left = 422
        Top = 322
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        Enabled = False
        TabOrder = 6
        OnClick = Clear1Click
      end
      object Error: TMemo
        Left = 263
        Top = 355
        Width = 234
        Height = 89
        Color = clWhite
        Enabled = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 7
      end
    end
    object SquarePage: TTabSheet
      AlignWithMargins = True
      Caption = #1050#1074#1072#1076#1088#1072#1090#1085#1099#1077' '#1091#1088#1072#1074#1085#1077#1085#1080#1103
      ImageIndex = 1
      object ASqr: TLabel
        Left = 16
        Top = 64
        Width = 19
        Height = 13
        Caption = 'a ='
      end
      object BSqr: TLabel
        Left = 126
        Top = 63
        Width = 19
        Height = 13
        Caption = 'b ='
      end
      object CSqr: TLabel
        Left = 234
        Top = 64
        Width = 18
        Height = 13
        Caption = 'c ='
      end
      object Dis2: TLabel
        Left = 16
        Top = 16
        Width = 333
        Height = 13
        Caption = #1056#1077#1096#1077#1085#1080#1077' '#1082#1074#1072#1076#1088#1072#1090#1085#1086#1075#1086' '#1091#1088#1072#1074#1085#1077#1085#1080#1103' '#1074#1080#1076#1072' ax^2 + bx + c = 0'
      end
      object X1Sqr: TLabel
        Left = 16
        Top = 105
        Width = 26
        Height = 13
        Caption = 'x1 ='
      end
      object X2Sqr: TLabel
        Left = 181
        Top = 105
        Width = 26
        Height = 13
        Caption = 'x2 ='
      end
      object Dis2Biq: TLabel
        Left = 16
        Top = 160
        Width = 362
        Height = 13
        Caption = #1056#1077#1096#1077#1085#1080#1077' '#1073#1080#1082#1074#1072#1076#1088#1072#1090#1085#1086#1075#1086' '#1091#1088#1072#1074#1085#1077#1085#1080#1103' '#1074#1080#1076#1072' ax^4 + bx^2 + c = 0'
      end
      object ABiq: TLabel
        Left = 16
        Top = 200
        Width = 19
        Height = 13
        Caption = 'a ='
      end
      object BBiq: TLabel
        Left = 126
        Top = 200
        Width = 19
        Height = 13
        Caption = 'b ='
      end
      object CBiq: TLabel
        Left = 234
        Top = 200
        Width = 18
        Height = 13
        Caption = 'c ='
      end
      object X1Biq: TLabel
        Left = 16
        Top = 240
        Width = 26
        Height = 13
        Caption = 'x1 ='
      end
      object X2Biq: TLabel
        Left = 181
        Top = 240
        Width = 26
        Height = 13
        Caption = 'x2 ='
      end
      object X3Biq: TLabel
        Left = 16
        Top = 272
        Width = 26
        Height = 13
        Caption = 'x3 ='
      end
      object X4Biq: TLabel
        Left = 181
        Top = 272
        Width = 26
        Height = 13
        Caption = 'x4 ='
      end
      object AnX1Sqr: TEdit
        Left = 48
        Top = 102
        Width = 113
        Height = 21
        Color = clWhite
        ReadOnly = True
        TabOrder = 4
      end
      object AnX2Sqr: TEdit
        Left = 213
        Top = 102
        Width = 113
        Height = 21
        Color = clWhite
        ReadOnly = True
        TabOrder = 5
      end
      object EnterASqr: TEdit
        Left = 39
        Top = 60
        Width = 61
        Height = 21
        Color = clGradientInactiveCaption
        TabOrder = 0
      end
      object EnterBSqr: TEdit
        Left = 151
        Top = 60
        Width = 61
        Height = 21
        Color = clGradientInactiveCaption
        TabOrder = 1
      end
      object EnterCSqr: TEdit
        Left = 256
        Top = 60
        Width = 61
        Height = 21
        Color = clGradientInactiveCaption
        TabOrder = 2
      end
      object GoSqr: TButton
        Left = 342
        Top = 60
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #1056#1077#1096#1080#1090#1100
        TabOrder = 3
        OnClick = GoSqrClick
      end
      object EnterABiq: TEdit
        Left = 39
        Top = 197
        Width = 61
        Height = 21
        Color = clGradientInactiveCaption
        TabOrder = 6
      end
      object EnterBBiq: TEdit
        Left = 151
        Top = 197
        Width = 61
        Height = 21
        Color = clGradientInactiveCaption
        TabOrder = 7
      end
      object EnterCBiq: TEdit
        Left = 256
        Top = 197
        Width = 61
        Height = 21
        Color = clGradientInactiveCaption
        TabOrder = 8
      end
      object GoBiq: TButton
        Left = 342
        Top = 197
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #1056#1077#1096#1080#1090#1100
        TabOrder = 9
        OnClick = GoBiqClick
      end
      object AnX1Biq: TEdit
        Left = 48
        Top = 237
        Width = 113
        Height = 21
        Color = clWhite
        ReadOnly = True
        TabOrder = 10
      end
      object AnX2Biq: TEdit
        Left = 213
        Top = 242
        Width = 113
        Height = 21
        Color = clWhite
        ReadOnly = True
        TabOrder = 11
      end
      object AnX3Biq: TEdit
        Left = 48
        Top = 269
        Width = 113
        Height = 21
        Color = clWhite
        ReadOnly = True
        TabOrder = 12
      end
      object AnX4Biq: TEdit
        Left = 213
        Top = 269
        Width = 113
        Height = 21
        Color = clWhite
        ReadOnly = True
        TabOrder = 13
      end
    end
    object CalculatorPage: TTabSheet
      AlignWithMargins = True
      Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
      ImageIndex = 2
      object Calc: TLabel
        Left = 28
        Top = 16
        Width = 95
        Height = 13
        Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088'++'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Ravno: TLabel
        Left = 308
        Top = 79
        Width = 11
        Height = 16
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AnswerNum12: TEdit
        Left = 340
        Top = 59
        Width = 113
        Height = 21
        Color = clWhite
        ReadOnly = True
        TabOrder = 17
      end
      object Division: TButton
        Left = 283
        Top = 136
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = DivisionClick
      end
      object EnterNum1: TEdit
        Left = 179
        Top = 59
        Width = 113
        Height = 21
        Color = clGradientInactiveCaption
        TabOrder = 0
      end
      object EnterNum2: TEdit
        Left = 179
        Top = 93
        Width = 113
        Height = 21
        Color = clGradientInactiveCaption
        TabOrder = 1
      end
      object Factorial: TButton
        Left = 283
        Top = 168
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = '!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = FactorialClick
      end
      object Minus: TButton
        Left = 189
        Top = 137
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = MinusClick
      end
      object Multi: TButton
        Left = 236
        Top = 137
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = MultiClick
      end
      object Percent: TButton
        Left = 236
        Top = 169
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = PercentClick
      end
      object Plus: TButton
        Left = 142
        Top = 137
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = PlusClick
      end
      object Power: TButton
        Left = 189
        Top = 169
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = '^'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = PowerClick
      end
      object RadDeg: TButton
        Left = 298
        Top = 20
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = 'DEG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = RadDegClick
      end
      object Square: TButton
        Left = 142
        Top = 169
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = #8730
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = SquareClick
      end
      object TrigHypPage: TPageControl
        Left = 130
        Top = 249
        Width = 209
        Height = 191
        ActivePage = TrigPage
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        object TrigPage: TTabSheet
          AlignWithMargins = True
          Caption = 'TRIG '#928
          object ArcCosinus: TButton
            Left = 99
            Top = 65
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'ARCCOS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnClick = ArcCosinusClick
          end
          object ArcCotangens: TButton
            Left = 99
            Top = 96
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'ARCCTG'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
            OnClick = ArcCotangensClick
          end
          object ArcSinus: TButton
            Left = 18
            Top = 65
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'ARCSIN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            OnClick = ArcSinusClick
          end
          object ArcTangens: TButton
            Left = 18
            Top = 96
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'ARCTG'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            OnClick = ArcTangensClick
          end
          object Cosecans: TButton
            Left = 99
            Top = 34
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'COSEC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            OnClick = CosecansClick
          end
          object Cosinus: TButton
            Left = 54
            Top = 3
            Width = 41
            Height = 25
            Cursor = crHandPoint
            Caption = 'COS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = CosinusClick
          end
          object Cotangens: TButton
            Left = 152
            Top = 3
            Width = 41
            Height = 25
            Cursor = crHandPoint
            Caption = 'CTG'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = CotangensClick
          end
          object Secans: TButton
            Left = 18
            Top = 35
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'SEC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnClick = SecansClick
          end
          object Sinus: TButton
            Left = 4
            Top = 3
            Width = 41
            Height = 25
            Cursor = crHandPoint
            Caption = 'SIN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = SinusClick
          end
          object Tangens: TButton
            Left = 105
            Top = 3
            Width = 41
            Height = 25
            Cursor = crHandPoint
            Caption = 'TG'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = TangensClick
          end
          object ArcSecans: TButton
            Left = 18
            Top = 127
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'ARCSEC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
            OnClick = ArcSecansClick
          end
          object ArcCosecans: TButton
            Left = 99
            Top = 127
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'ARCCOSEC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
            OnClick = ArcCosecansClick
          end
        end
        object HypPage: TTabSheet
          AlignWithMargins = True
          Caption = 'HYP E'
          ImageIndex = 1
          ParentShowHint = False
          ShowHint = False
          object HypSh: TButton
            Left = 4
            Top = 3
            Width = 41
            Height = 25
            Cursor = crHandPoint
            Caption = 'SH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = HypShClick
          end
          object HypCh: TButton
            Left = 54
            Top = 3
            Width = 41
            Height = 25
            Cursor = crHandPoint
            Caption = 'CH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = HypChClick
          end
          object HypTh: TButton
            Left = 105
            Top = 3
            Width = 41
            Height = 25
            Cursor = crHandPoint
            Caption = 'TH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = HypThClick
          end
          object HypCth: TButton
            Left = 152
            Top = 3
            Width = 41
            Height = 25
            Cursor = crHandPoint
            Caption = 'CTH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = HypCthClick
          end
          object HypSech: TButton
            Left = 18
            Top = 34
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'SECH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnClick = HypSechClick
          end
          object HypCsch: TButton
            Left = 99
            Top = 34
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'CSCH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            OnClick = HypCschClick
          end
          object HypArSh: TButton
            Left = 18
            Top = 65
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'ARSH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            OnClick = HypArShClick
          end
          object HypArCh: TButton
            Left = 99
            Top = 65
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'ARCH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnClick = HypArChClick
          end
          object HypArTh: TButton
            Left = 18
            Top = 96
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'ARTH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            OnClick = HypArThClick
          end
          object HypArCth: TButton
            Left = 99
            Top = 96
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'ARCTH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
            OnClick = HypArCthClick
          end
          object HypArSch: TButton
            Left = 18
            Top = 127
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'ARSCH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
            OnClick = HypArSchClick
          end
          object HypArCsch: TButton
            Left = 99
            Top = 127
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'ARCSCH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
            OnClick = HypArCschClick
          end
        end
      end
      object Exponenta: TButton
        Left = 212
        Top = 201
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = 'EXP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = ExponentaClick
      end
      object LnLogarifm: TButton
        Left = 165
        Top = 201
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = 'LN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = LnLogarifmClick
      end
      object Logarifm: TButton
        Left = 118
        Top = 201
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = 'LOG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = LogarifmClick
      end
      object Nod: TButton
        Left = 306
        Top = 201
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = #1053#1054#1044
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnClick = NodClick
      end
      object Nok: TButton
        Left = 259
        Top = 201
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = #1053#1054#1050
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = NokClick
      end
      object EnterPI: TButton
        Left = 378
        Top = 137
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = #960
        TabOrder = 18
        OnClick = EnterPIClick
      end
      object EnterE: TButton
        Left = 378
        Top = 169
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = 'e'
        TabOrder = 19
        OnClick = EnterEClick
      end
      object EnterI: TButton
        Left = 378
        Top = 201
        Width = 41
        Height = 26
        Cursor = crHandPoint
        Caption = 'i^2'
        TabOrder = 20
        OnClick = EnterIClick
      end
      object Clear2: TButton
        Left = 378
        Top = 249
        Width = 75
        Height = 26
        Cursor = crHandPoint
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 21
        OnClick = Clear2Click
      end
      object AnswerNum34: TEdit
        Left = 340
        Top = 93
        Width = 113
        Height = 21
        Color = clWhite
        ReadOnly = True
        TabOrder = 22
      end
    end
    object InfoPage: TTabSheet
      Caption = #1048#1085#1092#1072
      ImageIndex = 3
      object dis4_1: TLabel
        Left = 208
        Top = 24
        Width = 110
        Height = 16
        Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088'++'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dis4_2: TLabel
        Left = 24
        Top = 64
        Width = 413
        Height = 14
        Caption = 
          #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088' '#1076#1083#1103' '#1088#1072#1089#1095#1105#1090#1072' '#1089#1080#1089#1090#1077#1084' '#1083#1080#1085#1077#1081#1085#1099#1093' '#1072#1083#1075#1077#1073#1088#1072#1080#1095#1077#1089#1082#1080#1093' '#1091#1088#1072#1074#1085#1077#1085#1080#1081 +
          ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dis4_3: TLabel
        Left = 24
        Top = 84
        Width = 386
        Height = 14
        Caption = #1084#1072#1082#1089#1080#1084#1091#1084' '#1085#1072' 1000 '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1093', '#1072' '#1090#1072#1082#1078#1077' '#1076#1083#1103' '#1088#1072#1089#1095#1105#1090#1072' '#1082#1074#1072#1076#1088#1072#1090#1085#1099#1093' '#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dis4_4: TLabel
        Left = 24
        Top = 104
        Width = 320
        Height = 14
        Caption = #1073#1080#1082#1074#1072#1076#1088#1072#1090#1085#1099#1093' '#1091#1088#1072#1074#1085#1077#1085#1080#1081', '#1074#1082#1083#1102#1095#1072#1103' '#1082#1086#1084#1087#1083#1077#1082#1089#1085#1099#1077' '#1095#1080#1089#1083#1072'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dis4_5: TLabel
        Left = 24
        Top = 144
        Width = 231
        Height = 14
        Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082' '#1101#1090#1086#1075#1086' '#1095#1091#1076#1077#1089#1085#1086#1075#1086' '#1090#1074#1086#1088#1077#1085#1080#1103':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Developer1: TLabel
        Left = 32
        Top = 164
        Width = 114
        Height = 14
        Caption = #1042#1086#1081#1090#1082#1086' '#1050#1086#1085#1089#1090#1072#1085#1090#1080#1085','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Developer2: TLabel
        Left = 32
        Top = 211
        Width = 90
        Height = 14
        Caption = #1054#1073#1086#1079#1085#1099#1081' '#1040#1088#1090#1105#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dis4_7: TLabel
        Left = 24
        Top = 248
        Width = 174
        Height = 14
        Caption = #1042#1077#1088#1089#1080#1080' '#1076#1083#1103' '#1076#1088#1091#1075#1080#1093' '#1087#1083#1072#1090#1092#1086#1088#1084':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object date: TLabel
        Left = 456
        Top = 456
        Width = 60
        Height = 14
        Caption = '2018-2022'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object link_down: TLabel
        Left = 24
        Top = 276
        Width = 53
        Height = 14
        Cursor = crHandPoint
        Caption = #1057#1050#1040#1063#1040#1058#1068
        Color = clGradientActiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        OnClick = link_downClick
        OnMouseDown = link_downMouseDown
        OnMouseUp = link_downMouseUp
      end
      object link_vk1: TLabel
        Left = 184
        Top = 164
        Width = 15
        Height = 14
        Cursor = crHandPoint
        Caption = 'VK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = link_vk1Click
        OnMouseDown = link_vk1MouseDown
        OnMouseUp = link_vk1MouseUp
      end
      object link_vk2: TLabel
        Left = 184
        Top = 211
        Width = 15
        Height = 14
        Cursor = crHandPoint
        Caption = 'VK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = link_vk2Click
        OnMouseDown = link_vk2MouseDown
        OnMouseUp = link_vk2MouseUp
      end
      object dis4_6: TLabel
        Left = 24
        Top = 192
        Width = 197
        Height = 14
        Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082' '#1079#1072#1097#1080#1090#1099' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
