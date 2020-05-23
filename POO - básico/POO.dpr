program POO;

uses
  Vcl.Forms,
  UformPrincipal in 'UformPrincipal.pas' {Form1},
  UclassComputador in 'UclassComputador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
