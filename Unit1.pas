unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    abelMahasiswa1: TMenuItem;
    abelMahasiswa2: TMenuItem;
    abelWalikelas1: TMenuItem;
    abelOrangtua1: TMenuItem;
    abelCatatan1: TMenuItem;
    abelPoin1: TMenuItem;
    procedure abelsiswa2Click(Sender: TObject);
    procedure abelWalikelas1Click(Sender: TObject);
    procedure abelOrangtua1Click(Sender: TObject);
    procedure abelCatatan1Click(Sender: TObject);
    procedure abelPoin1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit6, Unit7;

{$R *.dfm}

procedure TForm1.abelsiswa2Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.abelWalikelas1Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.abelOrangtua1Click(Sender: TObject);
begin
 Form4.Show;
end;

procedure TForm1.abelCatatan1Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm1.abelPoin1Click(Sender: TObject);
begin
Form7.Show;
end;

end.
