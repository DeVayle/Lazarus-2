unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Math, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var x, y, f: real;
begin
  x:= StrToFloat(Edit1.Text);
  y:= StrToFloat(Edit2.Text);

  if x<>1 then begin
    f:= (((x+1)/(x-1))**x) + 18*x*(y**2);
    label4.Caption:='';
    end
    else label4.Caption:='X не может быть равен 1!';
  edit3.text:=FloatToStr(f);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.

