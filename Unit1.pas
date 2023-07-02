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
    procedure abelMahasiswa2Click(Sender: TObject);
    procedure abelWalikelas1Click(Sender: TObject);
    procedure abelOrangtua1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.abelMahasiswa2Click(Sender: TObject);
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

end.
