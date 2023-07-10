unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm7 = class(TForm)
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    btn6: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.FormCreate(Sender: TObject);
begin
edt2.Clear;
edt3.Clear;
edt4.Clear;



btn3.Enabled := False; //button ubah tidak aktif
btn4.Enabled := False;
btn5.Enabled := False;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
edt2.Clear;
edt3.Clear;
edt4.Clear;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('INSERT INTO poin (poin, bobot, jenis) VALUES (:Value1, :Value2, :Value3)');
  zqry1.ParamByName('Value1').AsString := edt2.Text;
  zqry1.ParamByName('Value2').AsString := edt3.Text;
  zqry1.ParamByName('Value3').AsString := edt4.Text;
  zqry1.ExecSQL;

  zqry1.Close;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM poin');
  zqry1.Open;

  ShowMessage('Data berhasil disimpan!');

  edt2.Clear;
  edt3.Clear;
  edt4.Clear;

end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
      if (zqry1.RecordCount > 0) and (zqry1.Fields.Count > 3) then
begin
    edt2.Text := zqry1.Fields[1].AsString;
    edt3.Text := zqry1.Fields[2].AsString;
    edt4.Text := zqry1.Fields[3].AsString;
    btn3.Enabled := True;
    btn4.Enabled := True;
    btn5.Enabled := True;
end;
end;

procedure TForm7.btn3Click(Sender: TObject);
var
  Confirmation: Integer;
begin
  Confirmation := MessageDlg('Apakah Anda yakin ingin mengedit data ini?', mtConfirmation, [mbYes, mbNo], 0);

  if Confirmation = mrYes then
  begin
    // Mengedit data
    zqry1.SQL.Clear;
    zqry1.SQL.Add('UPDATE poin SET bobot = :Value2, jenis = :Value3 WHERE poin = :Value1');
    zqry1.ParamByName('Value1').AsString := edt2.Text;
    zqry1.ParamByName('Value2').AsString := edt3.Text;
    zqry1.ParamByName('Value3').AsString := edt4.Text;
    zqry1.ExecSQL;

    ShowMessage('Data berhasil diedit!');
  end
  else
  begin
    ShowMessage('Pengeditan data dibatalkan!');
  end;

  // Menampilkan data terbaru setelah pengeditan atau tidak melakukan edit
  if not zqry1.IsEmpty then
  begin
    zqry1.Close; // Menutup dataset sebelum melakukan SELECT
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM poin WHERE poin = :Value1');
    zqry1.ParamByName('Value1').AsString := edt2.Text;
    zqry1.Open;

    // Menampilkan data terbaru di komponen input
    if not zqry1.IsEmpty then
    begin
      edt3.Text := zqry1.FieldByName('bobot').AsString;
      edt4.Text := zqry1.FieldByName('jenis').AsString;
    end;
  end;
end;








procedure TForm7.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('DELETE FROM poin WHERE poin = :Value1');
zqry1.ParamByName('Value1').AsString := edt2.Text;
zqry1.ExecSQL;

zqry1.Close;
zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM poin');
zqry1.Open;

ShowMessage('Data berhasil dihapus!');

edt2.Clear;
edt3.Clear;
edt4.Clear;

end;

end.
