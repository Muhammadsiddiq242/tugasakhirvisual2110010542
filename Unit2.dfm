object Form2: TForm2
  Left = 296
  Top = 228
  Width = 924
  Height = 480
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
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
    Top = 216
    Width = 81
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btn1Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 264
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
  object cbb1: TComboBox
    Left = 248
    Top = 136
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    OnChange = cbb1Change
  end
  object mm1: TMainMenu
    object PilihTabel1: TMenuItem
      Caption = 'Pilih Tabel'
      object abelMahasiswa1: TMenuItem
        Caption = 'Tabel Mahasiswa'
      end
      object abelWalikelas1: TMenuItem
        Caption = 'Tabel Walikelas'
      end
      object abelOrangtua1: TMenuItem
        Caption = 'Tabel Orangtua'
      end
    end
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=F:\VI' +
      'SUAL 2\TUGAS VISUAL 2\TABEL_MAHASISWA.mdb;Mode=Share Deny None;P' +
      'ersist Security Info=False;Jet OLEDB:System database="";Jet OLED' +
      'B:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engi' +
      'ne Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Par' +
      'tial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:N' +
      'ew Database Password="";Jet OLEDB:Create System Database=False;J' +
      'et OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on C' +
      'ompact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet ' +
      'OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 56
  end
  object ds1: TDataSource
    DataSet = dsmahasiswa
    Top = 152
  end
  object dsmahasiswa: TADODataSet
    Active = True
    Connection = con1
    CursorType = ctStatic
    CommandText = 'Select * from Table1;'
    Parameters = <>
    Left = 8
    Top = 104
  end
end
