program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  UvaloresNF in '..\..\POO - Classes\UvaloresNF.pas',
  UcadastroCliente in '..\..\POO - Classes\UcadastroCliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
