unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, JVE.Native, FMX.Layouts;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    GridPanelLayout1: TGridPanelLayout;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TForm1.Button1Click(Sender: TObject);
begin
 label1.TextSettings.Font.Size :=  label1.TextSettings.Font.Size - 1;
  Label2.Text := 'Label Size: '+label1.TextSettings.Font.Size.ToString;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 label1.TextSettings.Font.Size :=  label1.TextSettings.Font.Size + 1;
  Label2.Text := 'Label Size: '+label1.TextSettings.Font.Size.ToString;
end;

end.
