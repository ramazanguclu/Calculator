unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btnBir: TButton;
    btnIki: TButton;
    btnUc: TButton;
    btnDort: TButton;
    btnBes: TButton;
    btnAlti: TButton;
    btnYedi: TButton;
    btnSekiz: TButton;
    btnDokuz: TButton;
    btnKareAl: TButton;
    edtHesapMak: TEdit;
    btnSifir: TButton;
    btnKokAl: TButton;
    btnArti: TButton;
    btnEksi: TButton;
    btnCarpi: TButton;
    btnBolme: TButton;
    btnEsittir: TButton;
    btnSil: TButton;

    procedure IslemYap;
    procedure Tuslar(a:ShortString);

    procedure btnBirClick(Sender: TObject);
    procedure btnIkiClick(Sender: TObject);
    procedure btnUcClick(Sender: TObject);
    procedure btnDortClick(Sender: TObject);
    procedure btnBesClick(Sender: TObject);
    procedure btnAltiClick(Sender: TObject);
    procedure btnYediClick(Sender: TObject);
    procedure btnSekizClick(Sender: TObject);
    procedure btnDokuzClick(Sender: TObject);
    procedure btnSifirClick(Sender: TObject);
    procedure btnArtiClick(Sender: TObject);
    procedure btnEsittirClick(Sender: TObject);
    procedure btnEksiClick(Sender: TObject);
    procedure btnCarpiClick(Sender: TObject);
    procedure btnBolmeClick(Sender: TObject);
    procedure btnSilClick(Sender: TObject);
    procedure btnKokAlClick(Sender: TObject);
    procedure btnKareAlClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  SayiGirildi:integer;
  IslemSecildi:integer;
  sonuc:Real;
  islem:integer;
  
implementation

{$R *.dfm}

procedure TForm1.btnBirClick(Sender: TObject);
begin
   Tuslar('1');
end;

procedure TForm1.btnIkiClick(Sender: TObject);
begin
     Tuslar('2');
end;

procedure TForm1.btnUcClick(Sender: TObject);
begin
   Tuslar('3');
end;

procedure TForm1.btnDortClick(Sender: TObject);
begin
   Tuslar('4');
end;

procedure TForm1.btnBesClick(Sender: TObject);
begin
   Tuslar('5');
end;

procedure TForm1.btnAltiClick(Sender: TObject);
begin
   Tuslar('6');
end;

procedure TForm1.btnYediClick(Sender: TObject);
begin
   Tuslar('7');
end;

procedure TForm1.btnSekizClick(Sender: TObject);
begin
   Tuslar('8');
end;

procedure TForm1.btnDokuzClick(Sender: TObject);
begin
   Tuslar('9');
end;

procedure TForm1.btnSifirClick(Sender: TObject);
begin
   Tuslar('0');
end;

procedure TForm1.btnArtiClick(Sender: TObject);

begin
  IslemYap;
  islem := 1;
end;

procedure TForm1.btnEsittirClick(Sender: TObject);
begin
  SayiGirildi:=0;
  IslemYap;
end;

procedure TForm1.btnEksiClick(Sender: TObject);
var s1,s2:Real;
begin
  IslemYap;
  islem := 2;
end;

procedure TForm1.btnCarpiClick(Sender: TObject);
begin
  IslemYap;
  islem := 3;
end;

procedure TForm1.btnBolmeClick(Sender: TObject);
begin
 IslemYap;
 islem:=4;
end;

procedure TForm1.btnSilClick(Sender: TObject);
begin
    edtHesapMak.Text := '0'  ;
    Sonuc := 0 ;
    islem := 0 ;
    SayiGirildi:=1;
    IslemSecildi:=1;
end;

procedure TForm1.IslemYap;
var
kontrol:integer;
begin
     kontrol :=1;
     if SayiGirildi=0 then
     begin
        if islem =1 then sonuc := sonuc + StrToFloat(edtHesapMak.Text);
        if islem =2 then sonuc := sonuc - StrToFloat(edtHesapMak.Text);
        if islem =3 then sonuc := sonuc * StrToFloat(edtHesapMak.Text);
        if islem =4 then sonuc := sonuc / StrToFloat(edtHesapMak.Text);
        if islem =5 then sonuc := Sqr(StrToFloat(edtHesapMak.Text));
        if islem =6 then sonuc := Sqrt(StrToFloat(edtHesapMak.Text));
        if islem =0 then
        begin
             kontrol:=0;
             sonuc:= StrToFloat(edtHesapMak.Text);
        end;
        if kontrol = 1 then edtHesapMak.Text := FloatToStr(Sonuc);

        SayiGirildi:=1;
        IslemSecildi:=1;
     end;
end;

procedure TForm1.btnKokAlClick(Sender: TObject);
begin
    SayiGirildi := 0;
    islem := 6;
    IslemYap;
    islem := 0;
end;

procedure TForm1.btnKareAlClick(Sender: TObject);
begin
    SayiGirildi := 0;
    islem := 5;
    IslemYap;
    islem := 0;
end;

procedure TForm1.Tuslar(a: ShortString);
begin
    If   edtHesapMak.Text = '0' Then edtHesapMak.Text := '' ;

    If IslemSecildi=1 then
       begin
          edtHesapMak.Text:= '' ;
          IslemSecildi:=0;
       end;

    edtHesapMak.Text:=edtHesapMak.Text + a;
    SayiGirildi:=0;
end;

end.
