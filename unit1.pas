unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFormKoordinat }

  TFormKoordinat = class(TForm)
    ButtonTitik: TButton;
    ButtonGaris: TButton;
    ButtonKotak: TButton;
    ButtonLingkaran: TButton;
    ButtonHapus: TButton;
    ButtonSegitiga1: TButton;
    ButtonSegilima: TButton;
    ButtonSegi3dua: TButton;
    ButtonBintang: TButton;
    LabelKoordinat: TLabel;
    procedure ButtonTitikClick(Sender: TObject);
    procedure ButtonGarisClick(Sender: TObject);
    procedure ButtonKotakClick(Sender: TObject);
    procedure ButtonLingkaranClick(Sender: TObject);
    procedure ButtonHapusClick(Sender: TObject);
    procedure ButtonSegitiga1Click(Sender: TObject);
    procedure ButtonSegilimaClick(Sender: TObject);
    procedure ButtonSegi3duaClick(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  private

  public

  end;

var
  FormKoordinat: TFormKoordinat;

implementation

{$R *.lfm}

{ TFormKoordinat }

procedure TFormKoordinat.FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  LabelKoordinat.Caption := 'X : ' + IntToStr(X) + ' Y : ' + IntToStr(Y);
end;

procedure TFormKoordinat.ButtonTitikClick(Sender: TObject);
begin
  Canvas.Pixels[150, 170] := clRed;
end;

procedure TFormKoordinat.ButtonGarisClick(Sender: TObject);
begin
  Canvas.Pen.Color := clBlack;
  Canvas.MoveTo(150, 170);
  Canvas.LineTo(350, 170);
end;

procedure TFormKoordinat.ButtonKotakClick(Sender: TObject);
begin
  Canvas.Pen.Color := clBlack;
  Canvas.Rectangle(100, 100, 250, 200);
end;

procedure TFormKoordinat.ButtonLingkaranClick(Sender: TObject);
begin
  Canvas.Pen.Color := clBlack;
  Canvas.Ellipse(150, 150, 250, 250);
end;

procedure TFormKoordinat.ButtonHapusClick(Sender: TObject);
begin
  Canvas.FillRect(ClientRect); // Hapus gambar dengan mengisi latar belakang
end;

procedure TFormKoordinat.ButtonSegitiga1Click(Sender: TObject);
begin
  Canvas.Pen.Color := clBlack;
  Canvas.MoveTo(88, 95);
  Canvas.LineTo(88, 235);
  Canvas.LineTo(213, 235);
  Canvas.LineTo(88, 95);
end;

procedure TFormKoordinat.ButtonSegilimaClick(Sender: TObject);
begin
  Canvas.Pen.Color := clBlue;
  Canvas.Polyline([Point(40, 10), Point(20, 60), Point(70, 30), Point(10, 30),
    Point(60, 60), Point(40, 10)]);
end;

procedure TFormKoordinat.ButtonSegi3duaClick(Sender: TObject);
var
  x, y: word;
begin
  for x := 15 to 200 do
    for y := 200 downto x do
      Canvas.Pixels[x, y] := clRed;
end;

end.

