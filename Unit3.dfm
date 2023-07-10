object Form3: TForm3
  Left = 446
  Top = 221
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
    OnClick = btn1Click
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
    OnCellClick = dbgrd1CellClick
  end
  object btn2: TButton
    Left = 336
    Top = 217
    Width = 81
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 425
    Top = 217
    Width = 81
    Height = 33
    Caption = 'EDIT'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 516
    Top = 217
    Width = 81
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 11
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 606
    Top = 215
    Width = 81
    Height = 33
    Caption = 'BATAL'
    TabOrder = 12
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 696
    Top = 215
    Width = 77
    Height = 33
    Caption = 'Cetak'
    TabOrder = 13
    OnClick = btn6Click
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
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45117.899784398100000000
    ReportOptions.LastChange = 45117.913152523150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 263
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
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 1700.788500000000000000
        object Memo1: TfrxMemoView
          Left = 351.496290000000000000
          Top = 7.559060000000000000
          Width = 430.866420000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA WALIKELAS')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 83.149660000000000000
        Width = 1700.788500000000000000
        object Memo2: TfrxMemoView
          Left = 18.897650000000000000
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
          Left = 90.708720000000000000
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
        object Memo4: TfrxMemoView
          Left = 260.787570000000000000
          Width = 260.787570000000000000
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
        object Memo5: TfrxMemoView
          Left = 521.575140000000000000
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
            'JENIS KELAMIN')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 737.008350000000000000
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
            'PENDIDIKAN')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 1043.150280000000000000
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
            'MATPEL')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 1247.244900000000000000
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
            'WALKEL')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 1421.103280000000000000
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
            'KEPSEK')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 170.078850000000000000
        Width = 1700.788500000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 18.897650000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          DataField = 'id'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."id"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 90.708720000000000000
          Width = 170.078850000000000000
          Height = 26.456710000000000000
          DataField = 'nik'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nik"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 260.787570000000000000
          Width = 260.787570000000000000
          Height = 26.456710000000000000
          DataField = 'nama'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nama"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 521.575140000000000000
          Width = 215.433210000000000000
          Height = 26.456710000000000000
          DataField = 'jenis_kelamin'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 737.008350000000000000
          Width = 306.141930000000000000
          Height = 26.456710000000000000
          DataField = 'pendidikan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."pendidikan"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 1043.150280000000000000
          Width = 204.094620000000000000
          Height = 26.456710000000000000
          DataField = 'matpel'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."matpel"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 1247.244900000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          DataField = 'walkel'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."walkel"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 1421.103280000000000000
          Width = 204.094620000000000000
          Height = 26.456710000000000000
          DataField = 'kepsek'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."kepsek"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 345
    Top = 317
  end
end
