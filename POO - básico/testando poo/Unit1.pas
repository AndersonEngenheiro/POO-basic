unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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


{ run; add to projetc; escolha a classe que deseja adicionar, depois
adicione a unit pelo uses unit.
--> agora posso reutilizar duas classes criadas e usadas em outros programas }

uses UvaloresNF, UcadastroCliente;

procedure TForm1.Button1Click(Sender: TObject);
var
  valor : TvaloresNF;
  nome, dataNasc : TcadastroCliente;


begin
   //instanciando objeto de uma classe
   valor := TvaloresNF.Create;
   valor.valorMerc := StrToFloat(Edit1.Text);
   showMessage(FloatToStr(valor.valorMerc));

   //instanciando objeto de outra classe
   nome := TcadastroCliente.Create;
   nome.nome := Edit2.Text;
   showMessage(nome.nome);

   dataNasc := TcadastroCliente.Create;
   dataNasc.dataNasc := Edit3.Text;
   showMessage(dataNasc.dataNasc);

end;

end.
