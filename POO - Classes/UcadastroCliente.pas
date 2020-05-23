unit UcadastroCliente;

interface
      type


        TcadastroCliente = class

         private

           // atributos e m�todos privados

            FcodCli : integer;
            Fnome : string;
            FdataNasc : string;
            FenderecoRes : string;
            Fcelular : string;
            procedure Setcelular(const Value: string);
            procedure SetcodCli(const Value: integer);
            procedure SetdataNasc(const Value: string);
            procedure SetenderecoRes(const Value: string);
            procedure Setnome(const Value: string);

         protected

         // atributos e m�todos protegidos

         public

         // atributos e m�todos p�blicos

           property celular: string read Fcelular write Setcelular;
           property codcli : integer read Fcodcli write Setcodcli;
           property dataNasc: string read FdataNasc write SetdataNasc;
           property enderecoRes: string read FenderecoRes write SetenderecoRes;
           property nome: string read Fnome write Setnome;

     end;

implementation

//declarar outras units para funcionamento correto

uses Windows, Messages, SysUtils, dateUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

{ TcadastroCliente }

procedure TcadastroCliente.Setcelular(const Value: string);
begin
  Fcelular := Value;
end;

procedure TcadastroCliente.SetcodCli(const Value: integer);
begin

  FcodCli := Value;

end;

procedure TcadastroCliente.SetdataNasc(const Value: string);
// validando a data
var
  DataDigitadaNoEdit: TDateTime;
begin
  if TryStrToDate(value,DataDigitadaNoEdit) then
    Begin
      FdataNasc := Value;
      Showmessage('Data V�lida : '+DateToStr(DataDigitadaNoEdit))
   
    End
   else
      Showmessage('Data Inv�lida.');
  
   
end;

procedure TcadastroCliente.SetenderecoRes(const Value: string);
begin
  FenderecoRes := Value;
end;

//criando regras de neg�cio - valida��o -  em um campo espec�fico
procedure TcadastroCliente.Setnome(const Value: string);
begin
  if Length(Value) < 5 then
   raise Exception.Create('Necess�rio mais de 5 caracteres');

  Fnome := Value;
end;

end.
