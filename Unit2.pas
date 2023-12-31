unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls, ComCtrls, Menus, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, frxClass, frxDBSet ;

type
  TForm2 = class(TForm)
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
    dtp1: TDateTimePicker;
    btn1: TButton;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    cbb1: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.items.add('Laki laki');
cbb1.items.add('Perempuan');

btn3.Enabled := False; //button ubah tidak aktif
btn4.Enabled := False;
btn5.Enabled := False;

end;

procedure TForm2.cbb1Change(Sender: TObject);
begin

   if cbb1.text = 'Laki-Laki' then

  else if cbb1.text = 'Perempuan' then

 else
   messagedlg('masukkan list yang benar', mtinformation, [mbOK],0);

end;

procedure TForm2.btn1Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Clear;

end;

procedure TForm2.btn2Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('INSERT INTO siswa (nisn, nik, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, tingkat_kelas, jurusan) VALUES (:Value1, :Value2, :Value3, :Value4, :Value5, :Value6, :Value7, :Value8)');
zqry1.ParamByName('Value1').AsString := edt1.Text;
zqry1.ParamByName('Value2').AsString := edt2.Text;
zqry1.ParamByName('Value3').AsString := edt3.Text;
zqry1.ParamByName('Value4').AsString := edt4.Text;
zqry1.ParamByName('Value5').AsDate := dtp1.Date;
zqry1.ParamByName('Value6').AsString := cbb1.Text;
zqry1.ParamByName('Value7').AsString := edt5.Text;
zqry1.ParamByName('Value8').AsString := edt6.Text;
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT*FROM siswa');
zqry1.Open;
ShowMessage('Data berhasil disimpan!');
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Clear;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
if (zqry1.RecordCount > 0) and (zqry1.Fields.Count > 7) then
begin
    edt1.Text := zqry1.Fields[1].AsString;
    edt2.Text := zqry1.Fields[2].AsString;
    edt3.Text := zqry1.Fields[3].AsString;
    edt4.Text := zqry1.Fields[4].AsString;
    dtp1.Date := zqry1.Fields[5].AsDateTime;
    cbb1.Text := zqry1.Fields[6].AsString;
    edt5.Text := zqry1.Fields[7].AsString;
    edt6.Text := zqry1.Fields[8].AsString;
    btn3.Enabled := True;
    btn4.Enabled := True;
    btn5.Enabled := True;
end;
end;

procedure TForm2.btn3Click(Sender: TObject);
var
  Confirmation: Integer;
begin
  Confirmation := MessageDlg('Apakah Anda yakin ingin mengedit data ini?', mtConfirmation, [mbYes, mbNo], 0);
  
  if Confirmation = mrYes then
  begin
    // Mengedit data
    zqry1.SQL.Clear;
    zqry1.SQL.Add('UPDATE siswa SET nik = :Value2, nama = :Value3, tempat_lahir = :Value4, tanggal_lahir = :Value5, jenis_kelamin = :Value6, tingkat_kelas = :Value7, jurusan = :Value8 WHERE nisn = :Value1');
    zqry1.ParamByName('Value1').AsString := edt1.Text;
    zqry1.ParamByName('Value2').AsString := edt2.Text;
    zqry1.ParamByName('Value3').AsString := edt3.Text;
    zqry1.ParamByName('Value4').AsString := edt4.Text;
    zqry1.ParamByName('Value5').AsDate := dtp1.Date;
    zqry1.ParamByName('Value6').AsString := cbb1.Text;
    zqry1.ParamByName('Value7').AsString := edt5.Text;
    zqry1.ParamByName('Value8').AsString := edt6.Text;
    zqry1.ExecSQL;
  
    ShowMessage('Data berhasil diedit!');
  end
  else
  begin
    ShowMessage('Pengeditan data dibatalkan!');
  end;

  // Menampilkan data terbaru setelah pengeditan atau tidak melakukan edit
  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM siswa WHERE nisn = :Value1');
  zqry1.ParamByName('Value1').AsString := edt1.Text;
  zqry1.Open;
  
  // Menampilkan data terbaru di komponen input
  if not zqry1.IsEmpty then
  begin
    edt2.Text := zqry1.FieldByName('nik').AsString;
    edt3.Text := zqry1.FieldByName('nama').AsString;
    edt4.Text := zqry1.FieldByName('tempat_lahir').AsString;
    dtp1.Date := zqry1.FieldByName('tanggal_lahir').AsDateTime;
    cbb1.Text := zqry1.FieldByName('jenis_kelamin').AsString;
    edt5.Text := zqry1.FieldByName('tingkat_kelas').AsString;
    edt6.Text := zqry1.FieldByName('jurusan').AsString;
  end;
end;


procedure TForm2.btn4Click(Sender: TObject);
var
  Confirmation: Integer;
begin
  Confirmation := MessageDlg('Apakah Anda yakin ingin menghapus data ini?', mtConfirmation, [mbYes, mbNo], 0);

  if Confirmation = mrYes then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM siswa WHERE nisn = :Value1');
    zqry1.ParamByName('Value1').AsString := edt1.Text;
    zqry1.ExecSQL;
  
    ShowMessage('Data berhasil dihapus!');

    // Menampilkan data terbaru setelah penghapusan
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM siswa');
    zqry1.Open;
    
    edt1.Clear;
    edt2.Clear;
    edt3.Clear;
    edt4.Clear;
    edt5.Clear;
    edt6.Clear;
    cbb1.Clear;
    
    // Menampilkan data terbaru di komponen input
    if not zqry1.IsEmpty then
    begin
      edt1.Text := zqry1.FieldByName('nisn').AsString;
      edt2.Text := zqry1.FieldByName('nik').AsString;
      edt3.Text := zqry1.FieldByName('nama').AsString;
      edt4.Text := zqry1.FieldByName('tempat_lahir').AsString;
      dtp1.Date := zqry1.FieldByName('tanggal_lahir').AsDateTime;
      cbb1.Text := zqry1.FieldByName('jenis_kelamin').AsString;
      edt5.Text := zqry1.FieldByName('tingkat_kelas').AsString;
      edt6.Text := zqry1.FieldByName('jurusan').AsString;
    end;
  end
  else
  begin
    ShowMessage('Penghapusan data dibatalkan!');
  end;
end;



procedure TForm2.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Clear;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();

end;

end.
