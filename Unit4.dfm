object Form4: TForm4
  Left = 588
  Top = 141
  Width = 924
  Height = 480
  Caption = 'Form4'
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
    Left = 64
    Top = 32
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
    Top = 56
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
  object lbl4: TLabel
    Left = 64
    Top = 80
    Width = 98
    Height = 23
    Caption = 'PEKERJAAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 64
    Top = 103
    Width = 41
    Height = 23
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 64
    Top = 136
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
  object lbl7: TLabel
    Left = 64
    Top = 160
    Width = 68
    Height = 23
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 64
    Top = 184
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
    Left = 248
    Top = 56
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 248
    Top = 80
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 247
    Top = 105
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 247
    Top = 160
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
  object dbgrd1: TDBGrid
    Left = 32
    Top = 263
    Width = 857
    Height = 137
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cbb1: TComboBox
    Left = 248
    Top = 136
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    OnChange = cbb1Change
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
  object edt7: TEdit
    Left = 248
    Top = 185
    Width = 193
    Height = 21
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
    Left = 8
    Top = 89
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select*from ortu')
    Params = <>
    Left = 10
    Top = 136
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 10
    Top = 192
  end
end
