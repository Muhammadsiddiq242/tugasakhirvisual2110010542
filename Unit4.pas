unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btn1: TButton;
    dbgrd1: TDBGrid;
    cbb1: TComboBox;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    cbb2: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure cbb2Change(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.items.add('Laki laki');
cbb1.items.add('Perempuan');
cbb2.items.add('Hidup');
cbb2.items.add('Meninggal');

btn3.Enabled := False; //button ubah tidak aktif
btn4.Enabled := False;
btn5.Enabled := False;
end;

procedure TForm4.cbb1Change(Sender: TObject);
begin
  if cbb1.Text = 'Laki-Laki' then
  begin
    // Kode yang ingin dieksekusi jika cbb1.Text = 'Laki-Laki'
  end
  else if cbb1.Text = 'Perempuan' then
  begin
    // Kode yang ingin dieksekusi jika cbb1.Text = 'Perempuan'
  end
  else if cbb1.Text <> '' then
  begin
    // Pilihan yang dipilih hanya sebentar, tidak ada aksi yang perlu dilakukan
  end
  else
  begin
    messagedlg('Pilih gender yang valid', mtInformation, [mbOK], 0);
  end;
end;




procedure TForm4.btn1Click(Sender: TObject);
begin
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Clear;
cbb2.Clear;


btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := False;
end;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
 zqry1.SQL.Clear;
zqry1.SQL.Add('INSERT INTO ortu (nik, nama, pendidikan, pekerjaan, telpon, jenis_kelamin, alamat, status) VALUES (:Value1, :Value2, :Value3, :Value4, :Value5, :Value6, :Value7, :Value8)');
zqry1.ParamByName('Value1').AsString := edt1.Text;
zqry1.ParamByName('Value2').AsString := edt2.Text;
zqry1.ParamByName('Value3').AsString := edt3.Text;
zqry1.ParamByName('Value4').AsString := edt4.Text;
zqry1.ParamByName('Value5').AsString := edt5.Text;
zqry1.ParamByName('Value6').AsString := cbb1.Text;
zqry1.ParamByName('Value7').AsString := edt6.Text;
zqry1.ParamByName('Value8').AsString := cbb2.Text;
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT*FROM ortu');
zqry1.Open;
ShowMessage('Data berhasil disimpan!');
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Clear;
cbb2.Clear;
end;

procedure TForm4.cbb2Change(Sender: TObject);
begin
  if cbb2.Text = 'Hidup' then
  begin
    // Kode yang ingin dieksekusi jika cbb2.Text = 'Hidup'
  end
  else if cbb2.Text = 'Meninggal' then
  begin
    // Kode yang ingin dieksekusi jika cbb2.Text = 'Meninggal'
  end
  else
  begin
    messagedlg('Pilih status yang valid', mtInformation, [mbOK], 0);
  end;
end;


procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
 if (zqry1.RecordCount > 0) and (zqry1.Fields.Count > 6) then
begin
    edt1.Text := zqry1.Fields[1].AsString;
    edt2.Text := zqry1.Fields[2].AsString;
    edt3.Text := zqry1.Fields[3].AsString;
    edt4.Text := zqry1.Fields[4].AsString;
    edt5.Text := zqry1.Fields[5].AsString;
    cbb1.Text := zqry1.Fields[6].AsString;
    edt6.Text := zqry1.Fields[7].AsString;
    cbb2.Text := zqry1.Fields[8].AsString;

    btn3.Enabled := True;
    btn4.Enabled := True;
    btn5.Enabled := True;
end;
end;

procedure TForm4.btn3Click(Sender: TObject);
var
  Confirmation: Integer;
begin
  Confirmation := MessageDlg('Apakah Anda yakin ingin mengedit data ini?', mtConfirmation, [mbYes, mbNo], 0);

  if Confirmation = mrYes then
  begin
    // Mengedit data
    zqry1.SQL.Clear;
    zqry1.SQL.Add('UPDATE ortu SET nama = :Value2, pendidikan = :Value3, pekerjaan = :Value4, telpon = :Value5, jenis_kelamin = :Value6, alamat = :Value7, status = :Value8 WHERE nik = :Value1');
    zqry1.ParamByName('Value1').AsString := edt1.Text;
    zqry1.ParamByName('Value2').AsString := edt2.Text;
    zqry1.ParamByName('Value3').AsString := edt3.Text;
    zqry1.ParamByName('Value4').AsString := edt4.Text;
    zqry1.ParamByName('Value5').AsString := edt5.Text;
    zqry1.ParamByName('Value6').AsString := cbb1.Text;
    zqry1.ParamByName('Value7').AsString := edt6.Text;
    zqry1.ParamByName('Value8').AsString := cbb2.Text;
    zqry1.ExecSQL;

    ShowMessage('Data berhasil diedit!');
  end
  else
  begin
    ShowMessage('Pengeditan data dibatalkan!');
  end;

  // Menampilkan data terbaru setelah pengeditan atau tidak melakukan edit
  zqry1.Close; // Menutup dataset sebelum melakukan SELECT
  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM ortu WHERE nik = :Value1');
  zqry1.ParamByName('Value1').AsString := edt1.Text;
  zqry1.Open;

  // Menampilkan data terbaru di komponen input
  edt2.Text := zqry1.FieldByName('nama').AsString;
  edt3.Text := zqry1.FieldByName('pendidikan').AsString;
  edt4.Text := zqry1.FieldByName('pekerjaan').AsString;
  edt5.Text := zqry1.FieldByName('telpon').AsString;
  cbb1.Text := zqry1.FieldByName('jenis_kelamin').AsString;
  edt6.Text := zqry1.FieldByName('alamat').AsString;
  cbb2.Text := zqry1.FieldByName('status').AsString;
end;



procedure TForm4.btn4Click(Sender: TObject);
var
  Confirmation: Integer;
begin
  Confirmation := MessageDlg('Apakah Anda yakin ingin menghapus data ini?', mtConfirmation, [mbYes, mbNo], 0);

  if Confirmation = mrYes then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM ortu WHERE nik = :Value1');
    zqry1.ParamByName('Value1').AsString := edt1.Text;
    zqry1.ExecSQL;

    ShowMessage('Data berhasil dihapus!');
  end
  else
  begin
    ShowMessage('Penghapusan data dibatalkan!');
  end;

  // Menutup dataset setelah penghapusan
  zqry1.Close;

  // Menampilkan data terbaru setelah penghapusan atau pembatalan penghapusan
  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM ortu');
  zqry1.Open;

  // Membersihkan komponen input setelah penghapusan
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  cbb1.Clear;
  cbb2.Clear;
end;


procedure TForm4.btn5Click(Sender: TObject);
begin
   edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Clear;
cbb2.Clear;
end;

end.
