object Form2: TForm2
  Left = 296
  Top = 263
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
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 333
    Top = 314
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45110.672042465300000000
    ReportOptions.LastChange = 45110.697138391200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 262
    Top = 317
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 450.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      object ReportTitle1: TfrxReportTitle
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 1700.788500000000000000
        object Memo1: TfrxMemoView
          Left = 514.016080000000000000
          Top = 11.338590000000000000
          Width = 404.409710000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'CETAK LAPORAN DATA SISWA')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 102.047310000000000000
        Width = 1700.788500000000000000
        object Memo2: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 170.078850000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NISN')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 264.567100000000000000
          Top = 3.779530000000000000
          Width = 170.078850000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779530000000000000
          Width = 215.433210000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 650.079160000000000000
          Top = 3.779530000000000000
          Width = 306.141930000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TEMPAT LAHIR')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 956.221090000000000000
          Top = 3.779530000000000000
          Width = 204.094620000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL LAHIR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 1160.315710000000000000
          Top = 3.779530000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JENIS KELAMIN')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 1334.174090000000000000
          Top = 3.779530000000000000
          Width = 204.094620000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TINGKAT KELAS')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 1538.268710000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JURUSAN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 1700.788500000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 22.677180000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."id"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 94.488250000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'nisn'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nisn"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 264.567100000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'nik'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nik"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 434.645950000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nama"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 650.079160000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          DataField = 'tempat_lahir'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."tempat_lahir"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 956.221090000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal_lahir'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."tanggal_lahir"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 1160.315710000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'jenis_kelamin'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 1334.174090000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'tingkat_kelas'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."tingkat_kelas"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 1538.268710000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'jurusan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."jurusan"]')
          ParentFont = False
        end
      end
    end
  end
end
