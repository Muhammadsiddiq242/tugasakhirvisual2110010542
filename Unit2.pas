unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls, ComCtrls, Menus, Grids, DBGrids;

type
  TForm2 = class(TForm)
    mm1: TMainMenu;
    PilihTabel1: TMenuItem;
    abelMahasiswa1: TMenuItem;
    abelWalikelas1: TMenuItem;
    abelOrangtua1: TMenuItem;
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
    con1: TADOConnection;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    dsmahasiswa: TADODataSet;
    cbb1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
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
cbb1.items.add('Laki-laki');
cbb1.items.add('Perempuan');

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
dsmahasiswa.Append;
dsmahasiswa.FieldValues['NISN'] := edt1.Text;
dsmahasiswa.FieldValues['NIK'] := edt2.Text;
dsmahasiswa.FieldValues['NAMA'] := edt3.Text;
dsmahasiswa.FieldValues['TEMPAT LAHIR'] := edt4.Text;
dsmahasiswa.FieldValues['TANGGAL LAHIR'] := dtp1.Date;
dsmahasiswa.FieldValues['JENIS KELAMIN'] := cbb1.Text;
dsmahasiswa.FieldValues['TINGKAT KELAS'] := edt5.Text;
dsmahasiswa.FieldValues['JURUSAN'] := edt6.Text;
dsmahasiswa.Post;
ShowMessage('Data Pembayaran berhasil disimpan!');
end;

end.
