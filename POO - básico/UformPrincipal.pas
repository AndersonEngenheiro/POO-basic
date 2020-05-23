unit UformPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// declaramos a unit
uses UclassComputador;


procedure TForm1.Button1Click(Sender: TObject);
//criando os objetos da classe
var
  dell, dell2: Tcomputador;

begin
   dell := Tcomputador.Create;
   dell.memoriaRam := '4gb';
   dell.hd := '500gb';
   dell.monitor := '21';

   dell2 := Tcomputador.Create;
   dell2.memoriaRam := '8gb';
   dell2.hd := '1000gb';
   dell2.monitor := '29';


   showMessage(dell.hd+dell2.hd);
end;

end.
