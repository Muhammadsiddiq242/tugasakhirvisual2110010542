object Form1: TForm1
  Left = 383
  Top = 161
  Width = 924
  Height = 579
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 7
    Top = 65534
    object abelMahasiswa1: TMenuItem
      Caption = 'Pilih Tabel'
      object abelMahasiswa2: TMenuItem
        Caption = 'Tabel Mahasiswa'
        OnClick = abelsiswa2Click
      end
      object abelWalikelas1: TMenuItem
        Caption = 'Tabel Walikelas'
        OnClick = abelWalikelas1Click
      end
      object abelOrangtua1: TMenuItem
        Caption = 'Tabel Orangtua'
        OnClick = abelOrangtua1Click
      end
      object abelCatatan1: TMenuItem
        Caption = 'Tabel Catatan'
        OnClick = abelCatatan1Click
      end
      object abelPoin1: TMenuItem
        Caption = 'Tabel Poin'
        OnClick = abelPoin1Click
      end
    end
  end
end
