unit LazarusFiscal. Pis.Base;

{$mode Delphi}

interface

type
  TBasePis = class
  private
    FValorProduto: Currency;
    FValorfrete: Currency;
    FValorSeguro: Currency;
    FDespesasAcessorias: Currency;
    FValorDesconto: Currency;
    FValorIcmsProprio: Currency;
  public
    constructor Create(const AValorProduto, AValorFrete, AValorSeguro, ADespesasAcessorias, AValorDesconto: Currency; const AValorIcmsProprio: Currency = 0);
    function CalcularBasePis: Currency;
  end;

implementation

uses LazarusFiscal.Utils;

function TBasePis.CalcularBasePis: Currency;
begin
  Result := RoundABNT((FValorProduto + FValorfrete + FValorSeguro + FDespesasAcessorias - FValorDesconto) - FValorIcmsProprio, 2);
end;

constructor TBasePis.Create(const AValorProduto, AValorFrete, AValorSeguro, ADespesasAcessorias, AValorDesconto: Currency; const AValorIcmsProprio: Currency = 0);
begin
  FValorProduto := AValorProduto;
  FValorfrete := AValorFrete;
  FValorSeguro := AValorSeguro;
  FDespesasAcessorias := ADespesasAcessorias;
  FValorDesconto := AValorDesconto;
  FValorIcmsProprio := AValorIcmsProprio;
end;

end.
