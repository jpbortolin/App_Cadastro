unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses Unit2, Unit3, Unit4;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form3.show();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form4.show();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form2.show();
end;

end.
