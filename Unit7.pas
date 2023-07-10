unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

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
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
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

end.
