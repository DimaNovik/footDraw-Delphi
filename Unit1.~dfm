object Form1: TForm1
  Left = 240
  Top = 119
  Width = 870
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 854
    Height = 462
    Align = alClient
    Caption = #1060#1054#1056#1052#1040' '#1046#1045#1056#1045#1041#1068#1045#1042#1050#1048' "'#1058#1054#1055' '#1045#1053#1045#1056#1043#1048#1071' 2016"'
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 850
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 2
      Top = 419
      Width = 850
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 2
      Top = 56
      Width = 850
      Height = 363
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 2
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 344
        Height = 361
        Align = alLeft
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 342
          Height = 18
          Align = alTop
          Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1086#1084#1072#1085#1076#1091':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 1
          Top = 51
          Width = 160
          Height = 18
          Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1075#1088#1091#1087#1087#1091':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboBox1: TComboBox
          Left = 0
          Top = 24
          Width = 281
          Height = 22
          Style = csOwnerDrawVariable
          ItemHeight = 16
          TabOrder = 0
          OnSelect = ComboBox1Select
        end
        object ComboBox2: TComboBox
          Left = 0
          Top = 72
          Width = 145
          Height = 22
          Style = csOwnerDrawVariable
          ItemHeight = 16
          TabOrder = 1
          Items.Strings = (
            #1043#1088#1091#1087#1072' '#1040
            #1043#1088#1091#1087#1072' '#1042
            #1043#1088#1091#1087#1072' '#1057
            #1043#1088#1091#1087#1072' D')
        end
        object Edit1: TEdit
          Left = 0
          Top = 120
          Width = 121
          Height = 21
          TabOrder = 2
        end
      end
      object Panel5: TPanel
        Left = 664
        Top = 1
        Width = 185
        Height = 361
        Align = alRight
        TabOrder = 1
        object BitBtn1: TBitBtn
          Left = 24
          Top = 32
          Width = 145
          Height = 65
          Cursor = crHandPoint
          Caption = #1069#1050#1056#1040#1053
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn1Click
          Kind = bkIgnore
        end
        object Button1: TButton
          Left = 24
          Top = 120
          Width = 145
          Height = 73
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Impact'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button1Click
        end
        object BitBtn2: TBitBtn
          Left = 48
          Top = 216
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 2
          OnClick = BitBtn2Click
        end
      end
      object Panel6: TPanel
        Left = 345
        Top = 1
        Width = 319
        Height = 361
        Align = alClient
        TabOrder = 2
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 317
          Height = 359
          Align = alClient
          DataSource = DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'GlavId'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GlavName'
              Width = 212
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GroupId'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BaskId'
              Width = 23
              Visible = True
            end>
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'football'
    SQL.Strings = (
      'select * from commands.db'
      'where groupid=0 and glavid<>0'
      'order by 1')
    Left = 115
    Top = 177
    object Query1GlavId: TSmallintField
      FieldName = 'GlavId'
    end
    object Query1GlavName: TStringField
      FieldName = 'GlavName'
      Size = 250
    end
    object Query1GroupId: TSmallintField
      FieldName = 'GroupId'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 483
    Top = 169
  end
  object Table1: TTable
    DatabaseName = 'football'
    TableName = 'Commands.DB'
    Left = 411
    Top = 161
    object Table1GlavId: TSmallintField
      FieldName = 'GlavId'
    end
    object Table1GlavName: TStringField
      FieldName = 'GlavName'
      Size = 250
    end
    object Table1GroupId: TSmallintField
      FieldName = 'GroupId'
    end
    object Table1BaskId: TSmallintField
      FieldName = 'BaskId'
    end
  end
  object BatchMove1: TBatchMove
    Left = 280
  end
end
