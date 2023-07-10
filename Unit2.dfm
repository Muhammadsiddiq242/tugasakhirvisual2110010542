object Form2: TForm2
  Left = 397
  Top = 201
  Width = 924
  Height = 480
  Caption = 'Form2'
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
    Width = 44
    Height = 23
    Caption = 'NISN'
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
  object lbl3: TLabel
    Left = 64
    Top = 56
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
  object lbl4: TLabel
    Left = 64
    Top = 80
    Width = 127
    Height = 23
    Caption = 'TEMPAT LAHIR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 64
    Top = 104
    Width = 139
    Height = 23
    Caption = 'TANGGAL LAHIR'
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
    Width = 136
    Height = 23
    Caption = 'TINGKAT KELAS'
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
    Width = 79
    Height = 23
    Caption = 'JURUSAN'
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
    Left = 248
    Top = 160
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 248
    Top = 184
    Width = 193
    Height = 21
    TabOrder = 5
  end
  object dtp1: TDateTimePicker
    Left = 248
    Top = 104
    Width = 193
    Height = 25
    Date = 45095.524503194440000000
    Time = 45095.524503194440000000
    TabOrder = 6
  end
  object btn1: TButton
    Left = 248
    Top = 215
    Width = 81
    Height = 33
    Caption = 'BARU'
    TabOrder = 7
    OnClick = btn1Click
  end
  object dbgrd1: TDBGrid
    Left = 32
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
    OnCellClick = dbgrd1CellClick
  end
  object cbb1: TComboBox
    Left = 248
    Top = 136
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    OnChange = cbb1Change
  end
  object btn2: TButton
    Left = 336
    Top = 217
    Width = 81
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 10
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 425
    Top = 216
    Width = 81
    Height = 33
    Caption = 'EDIT'
    TabOrder = 11
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 516
    Top = 217
    Width = 81
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 12
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 606
    Top = 215
    Width = 81
    Height = 33
    Caption = 'BATAL'
    TabOrder = 13
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 705
    Top = 217
    Width = 75
    Height = 34
    Caption = 'cetak'
    TabOrder = 14
    OnClick = btn6Click
  end
  object ds1: TDataSource
    DataSet = zqry1
    Top = 152
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
    Left = 7
    Top = 72
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select*from siswa')
    Params = <>
    Left = 4
    Top = 114
  end
end
