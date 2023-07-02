object Form3: TForm3
  Left = 586
  Top = 158
  Width = 924
  Height = 514
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 64
    Top = 8
    Width = 31
    Height = 23
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 65
    Top = 34
    Width = 50
    Height = 23
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 64
    Top = 61
    Width = 133
    Height = 23
    Caption = 'JENIS KELAMIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 64
    Top = 86
    Width = 109
    Height = 23
    Caption = 'PENDIDIKAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 65
    Top = 111
    Width = 67
    Height = 23
    Caption = 'MATPEL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 66
    Top = 139
    Width = 68
    Height = 23
    Caption = 'WALKEL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 67
    Top = 166
    Width = 65
    Height = 23
    Caption = 'KEPSEK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 248
    Top = 8
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 248
    Top = 32
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 249
    Top = 88
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 250
    Top = 116
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 249
    Top = 142
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 249
    Top = 168
    Width = 193
    Height = 21
    TabOrder = 5
  end
  object btn1: TButton
    Left = 248
    Top = 215
    Width = 81
    Height = 33
    Caption = 'BARU'
    TabOrder = 6
  end
  object cbb1: TComboBox
    Left = 250
    Top = 60
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    OnChange = cbb1Change
  end
  object dbgrd1: TDBGrid
    Left = 31
    Top = 263
    Width = 857
    Height = 137
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn2: TButton
    Left = 336
    Top = 217
    Width = 81
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 9
  end
  object btn3: TButton
    Left = 425
    Top = 217
    Width = 81
    Height = 33
    Caption = 'EDIT'
    TabOrder = 10
  end
  object btn4: TButton
    Left = 516
    Top = 217
    Width = 81
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 11
  end
  object btn5: TButton
    Left = 606
    Top = 215
    Width = 81
    Height = 33
    Caption = 'BATAL'
    TabOrder = 12
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'tugasakhirvisual'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'F:\VISUAL 2\TUGAS VISUAL 2 mysql\libmysql.dll'
    Left = 11
    Top = 55
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select*from walikelas')
    Params = <>
    Left = 9
    Top = 100
  end
  object ds1: TDataSource
    DataSet = zqry1
    Top = 152
  end
end
