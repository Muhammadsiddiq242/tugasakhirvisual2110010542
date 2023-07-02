unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

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
    procedure FormCreate(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
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
 if cbb1.text = 'Laki-Laki' then

  else if cbb1.text = 'Perempuan' then

 else
   messagedlg('masukkan list yang benar', mtinformation, [mbOK],0);

end;

end.
