object Form6: TForm6
  Left = 351
  Top = 214
  Width = 924
  Height = 480
  Caption = 'Form6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 64
    Top = 7
    Width = 81
    Height = 23
    Caption = 'TANGGAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 64
    Top = 31
    Width = 93
    Height = 23
    Caption = 'SEMESTER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 64
    Top = 55
    Width = 83
    Height = 23
    Caption = 'SISWA ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 64
    Top = 79
    Width = 70
    Height = 23
    Caption = 'WALI ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 64
    Top = 102
    Width = 74
    Height = 23
    Caption = 'ORTU ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 64
    Top = 135
    Width = 69
    Height = 23
    Caption = 'POIN ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 64
    Top = 159
    Width = 117
    Height = 23
    Caption = 'KETERANGAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 64
    Top = 183
    Width = 67
    Height = 23
    Caption = 'STATUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 245
    Top = 30
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 246
    Top = 56
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 246
    Top = 82
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 246
    Top = 107
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 247
    Top = 132
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 247
    Top = 159
    Width = 193
    Height = 21
    TabOrder = 5
  end
  object btn1: TButton
    Left = 248
    Top = 214
    Width = 81
    Height = 33
    Caption = 'BARU'
    TabOrder = 6
  end
  object btn2: TButton
    Left = 336
    Top = 216
    Width = 81
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 7
  end
  object btn3: TButton
    Left = 425
    Top = 216
    Width = 81
    Height = 33
    Caption = 'EDIT'
    TabOrder = 8
  end
  object btn4: TButton
    Left = 516
    Top = 216
    Width = 81
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 9
  end
  object btn5: TButton
    Left = 606
    Top = 214
    Width = 81
    Height = 33
    Caption = 'BATAL'
    TabOrder = 10
  end
  object edt7: TEdit
    Left = 248
    Top = 184
    Width = 193
    Height = 21
    TabOrder = 11
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 264
    Width = 857
    Height = 137
    DataSource = ds1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dtp1: TDateTimePicker
    Left = 243
    Top = 3
    Width = 193
    Height = 25
    Date = 45095.524503194440000000
    Time = 45095.524503194440000000
    TabOrder = 13
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
    Left = 15
    Top = 54
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select*from catatan')
    Params = <>
    Left = 24
    Top = 110
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 16
    Top = 175
  end
end
