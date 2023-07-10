unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, ComCtrls, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
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
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    dtp1: TDateTimePicker;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    edt7: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
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
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;


btn3.Enabled := False; //button ubah tidak aktif
btn4.Enabled := False;
btn5.Enabled := False;
end;



procedure TForm6.btn1Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('INSERT INTO catatan (tanggal, semester, siswa_id, wali_id, ortu_id, poin_id, keterangan, status) VALUES (:Value1, :Value2, :Value3, :Value4, :Value5, :Value6, :Value7, :Value8)');
  zqry1.ParamByName('Value1').AsDate := dtp1.Date;
  zqry1.ParamByName('Value2').AsString := edt1.Text;
  zqry1.ParamByName('Value3').AsString := edt2.Text;
  zqry1.ParamByName('Value4').AsString := edt3.Text;
  zqry1.ParamByName('Value5').AsString := edt4.Text;
  zqry1.ParamByName('Value6').AsString := edt5.Text;
  zqry1.ParamByName('Value7').AsString := edt6.Text;
  zqry1.ParamByName('Value8').AsString := edt7.Text;
  zqry1.ExecSQL;

  zqry1.Close;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM catatan');
  zqry1.Open;

  ShowMessage('Data berhasil disimpan!');
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
end;


procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
if (zqry1.RecordCount > 0) and (zqry1.Fields.Count > 7) then
begin
    dtp1.Date := zqry1.Fields[1].AsDateTime;
    edt1.Text := zqry1.Fields[2].AsString;
    edt2.Text := zqry1.Fields[3].AsString;
    edt3.Text := zqry1.Fields[4].AsString;
    edt4.Text := zqry1.Fields[5].AsString;
    edt5.Text := zqry1.Fields[6].AsString;
    edt6.Text := zqry1.Fields[7].AsString;
    edt7.Text := zqry1.Fields[8].AsString;
    btn3.Enabled := True;
    btn4.Enabled := True;
    btn5.Enabled := True;
end;
end;

procedure TForm6.btn3Click(Sender: TObject);

var
  Confirmation: Integer;
begin
  Confirmation := MessageDlg('Apakah Anda yakin ingin mengedit data ini?', mtConfirmation, [mbYes, mbNo], 0);
  
  if Confirmation = mrYes then
  begin
    // Mengedit data
    zqry1.SQL.Clear;
    zqry1.SQL.Add('UPDATE catatan SET semester = :Value2, siswa_id = :Value3, wali_id = :Value4, ortu_id = :Value5, poin_id = :Value6, keterangan = :Value7, status = :Value8 WHERE tanggal = :Value1');
    zqry1.ParamByName('Value1').AsDate := dtp1.Date;
    zqry1.ParamByName('Value2').AsString := edt1.Text;
    zqry1.ParamByName('Value3').AsString := edt2.Text;
    zqry1.ParamByName('Value4').AsString := edt3.Text;
    zqry1.ParamByName('Value5').AsString := edt4.Text;
    zqry1.ParamByName('Value6').AsString := edt5.Text;
    zqry1.ParamByName('Value7').AsString := edt6.Text;
    zqry1.ParamByName('Value8').AsString := edt7.Text;
    zqry1.ExecSQL;
  
    ShowMessage('Data berhasil diedit!');
  end
  else
  begin
    ShowMessage('Pengeditan data dibatalkan!');
  end;

  // Menampilkan data terbaru setelah pengeditan atau tidak melakukan edit
  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM catatan WHERE tanggal = :Value1');
  zqry1.ParamByName('Value1').AsDate := dtp1.Date;
  zqry1.Open;
  
  // Menampilkan data terbaru di komponen input
  if not zqry1.IsEmpty then
  begin
    edt1.Text := zqry1.FieldByName('semester').AsString;
    edt2.Text := zqry1.FieldByName('siswa_id').AsString;
    edt3.Text := zqry1.FieldByName('wali_id').AsString;
    edt4.Text := zqry1.FieldByName('ortu_id').AsString;
    edt5.Text := zqry1.FieldByName('poin_id').AsString;
    edt6.Text := zqry1.FieldByName('keterangan').AsString;
    edt7.Text := zqry1.FieldByName('status').AsString;
  end;
end;
procedure TForm6.btn4Click(Sender: TObject);

var
  Confirmation: Integer;
begin
  Confirmation := MessageDlg('Apakah Anda yakin ingin menghapus data ini?', mtConfirmation, [mbYes, mbNo], 0);

  if Confirmation = mrYes then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM catatan WHERE tanggal = :Value1');
    zqry1.ParamByName('Value1').AsDate := dtp1.Date;
    zqry1.ExecSQL;

    ShowMessage('Data berhasil dihapus!');
  end
  else
  begin
    ShowMessage('Penghapusan data dibatalkan!');
  end;

  // Menampilkan data terbaru setelah penghapusan atau tidak melakukan penghapusan
  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM catatan');
  zqry1.Open;

  // Menampilkan data terbaru di komponen input
  if not zqry1.IsEmpty then
  begin
    edt1.Text := zqry1.FieldByName('semester').AsString;
    edt2.Text := zqry1.FieldByName('siswa_id').AsString;
    edt3.Text := zqry1.FieldByName('wali_id').AsString;
    edt4.Text := zqry1.FieldByName('ortu_id').AsString;
    edt5.Text := zqry1.FieldByName('poin_id').AsString;
    edt6.Text := zqry1.FieldByName('keterangan').AsString;
    edt7.Text := zqry1.FieldByName('status').AsString;
  end
  else
  begin
    edt1.Clear;
    edt2.Clear;
    edt3.Clear;
    edt4.Clear;
    edt5.Clear;
    edt6.Clear;
    edt7.Clear;
  end;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
dtp1.Date := Date;
end;

end.
