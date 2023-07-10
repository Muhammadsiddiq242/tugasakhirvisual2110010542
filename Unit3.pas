unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btn1: TButton;
    lbl2: TLabel;
    lbl3: TLabel;
    cbb1: TComboBox;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    dbgrd1: TDBGrid;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    btn6: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
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
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
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

procedure TForm3.cbb1Change(Sender: TObject);
begin
 if cbb1.text = 'Laki Laki' then

  else if cbb1.text = 'Perempuan' then

 else
   messagedlg('masukkan list yang benar', mtinformation, [mbOK],0);

end;

procedure TForm3.btn1Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Clear;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
 zqry1.SQL.Clear;
zqry1.SQL.Add('INSERT INTO walikelas (nik, nama, jenis_kelamin, pendidikan, matpel, walkel, kepsek) VALUES (:Value1, :Value2, :Value3, :Value4, :Value5, :Value6, :Value7)');
zqry1.ParamByName('Value1').AsString := edt1.Text;
zqry1.ParamByName('Value2').AsString := edt2.Text;
zqry1.ParamByName('Value3').AsString := cbb1.Text;
zqry1.ParamByName('Value4').AsString := edt3.Text;
zqry1.ParamByName('Value5').AsString := edt4.Text;
zqry1.ParamByName('Value6').AsString := edt5.Text;
zqry1.ParamByName('Value7').AsString := edt6.Text;
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT*FROM walikelas');
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

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
if (zqry1.RecordCount > 0) and (zqry1.Fields.Count > 6) then
begin
      edt1.Text := zqry1.Fields[1].AsString;
    edt2.Text := zqry1.Fields[2].AsString;
    cbb1.Text := zqry1.Fields[3].AsString;
    edt3.Text := zqry1.Fields[4].AsString;
    edt4.Text := zqry1.Fields[5].AsString;
    edt5.Text := zqry1.Fields[6].AsString;
    edt6.Text := zqry1.Fields[7].AsString;
    btn3.Enabled := True;
    btn4.Enabled := True;
    btn5.Enabled := True;
end;
end;

procedure TForm3.btn3Click(Sender: TObject);
var
  Confirmation: Integer;
begin
  Confirmation := MessageDlg('Apakah Anda yakin ingin mengedit data ini?', mtConfirmation, [mbYes, mbNo], 0);
  
  if Confirmation = mrYes then
  begin
    // Menghapus data lama
    zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM walikelas WHERE id = 1');
    zqry1.ExecSQL;
  
    // Menambahkan data yang diedit
    zqry1.SQL.Clear;
    zqry1.SQL.Add('INSERT INTO walikelas (id, nik, nama, jenis_kelamin, pendidikan, matpel, walkel, kepsek) VALUES (:Value1, :Value2, :Value3, :Value4, :Value5, :Value6, :Value7, :Value8)');
    zqry1.ParamByName('Value1').AsInteger := 1; // ID tetap
    zqry1.ParamByName('Value2').AsString := edt1.Text;
    zqry1.ParamByName('Value3').AsString := edt2.Text;
    zqry1.ParamByName('Value4').AsString := cbb1.Text;
    zqry1.ParamByName('Value5').AsString := edt3.Text;
    zqry1.ParamByName('Value6').AsString := edt4.Text;
    zqry1.ParamByName('Value7').AsString := edt5.Text;
    zqry1.ParamByName('Value8').AsString := edt6.Text;
    zqry1.ExecSQL;
  
    ShowMessage('Data berhasil diedit!');
  
    zqry1.Close;
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM walikelas');
    zqry1.Open;
  end
  else
  begin
    ShowMessage('Pengeditan data dibatalkan!');
  end;
end;

procedure TForm3.btn4Click(Sender: TObject);
var
  Confirmation: Integer;
begin
  Confirmation := MessageDlg('Apakah Anda yakin ingin menghapus data ini?', mtConfirmation, [mbYes, mbNo], 0);
  
  if Confirmation = mrYes then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM walikelas WHERE id = :Value1');
    zqry1.ParamByName('Value1').AsInteger := 1; // ID tetap
    zqry1.ExecSQL;
  
    ShowMessage('Data berhasil dihapus!');
  
    zqry1.Close;
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM walikelas');
    zqry1.Open;
  end
  else
  begin
    ShowMessage('Penghapusan data dibatalkan!');
  end;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Clear;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
     frxrprt1.ShowReport();
end;

end.


