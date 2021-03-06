unit UcadastroProduto;
       // a property deve ser inserida a princ�pio dentro de type
interface
    type

       TcadastroProduto = Class

       private

          FcodProduto : integer;
          FdescricaoProduto : string;
          procedure SetcodProduto(const Value: integer);
          procedure SetdescricaoProduto(const Value: string);



       protected

       published  //permite seja modificada por classe inferiores    ctrl shift c

         { fun��o criada para poder ser implementada por outras classe    }
        function exibeDados: string;abstract;
        property codProduto: integer read FcodProduto write SetcodProduto;
        property descricaoProduto: string read FdescricaoProduto write SetdescricaoProduto;

       public


    end;

implementation

{ TcadastroProduto }

// aqui podemos declarar uses
uses
  Windows, Messages, SysUtils, dateUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls;



procedure TcadastroProduto.SetcodProduto(const Value: integer);
begin
  FcodProduto := Value;
end;

procedure TcadastroProduto.SetdescricaoProduto(const Value: string);
begin
  FdescricaoProduto := Value;
end;

end.
