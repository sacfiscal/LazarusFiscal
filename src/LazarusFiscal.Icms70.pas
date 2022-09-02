unit LazarusFiscal. Icms70;

{$mode Delphi}

interface

uses LazarusFiscal. Icms.BaseProprio, LazarusFiscal. Icms.Valor, LazarusFiscal. Icms.Valor.ST, LazarusFiscal. Icms70.Intf, LazarusFiscal. Icms.BaseST;

type
  TIcms70 = class(TInterfacedObject, IIcms70)
  private
    FBaseIcmsProprio: TBaseIcmsProprio;
    FIcmsProprio: TValorIcms;
    FBaseIcmsST: TBaseIcmsST;
    FIcmsST: TValorIcmsST;
    function ValorBaseReduzidaIcmsProprio: Double;
    function ValorIcmsProprio: Double;
    function ValorBaseIcmsST: Double;
    function ValorIcmsST: Double;
    function ValorIcmsDesonerado: Double;
    function ValorIcmsSTDesonerado(const AValorIcmsStNormal: Double): Double;
  public
    constructor Create(const AValorProduto, AValorFrete, AValorSeguro, ADespesasAcessorias, AValorDesconto, AAliquotaIcms,
      APercentualReducao, AAliquotaIcmsST, AMva: Double; const APercentualReducaoST: Double = 0; const AValorIpi: Double = 0);
    class function New(const AValorProduto, AValorFrete, AValorSeguro, ADespesasAcessorias, AValorDesconto, AAliquotaIcms,
      APercentualReducao, AAliquotaIcmsST, AMva: Double; const APercentualReducaoST: Double = 0;
      const AValorIpi: Double = 0): IIcms70;
    destructor Destroy; override;
  end;

implementation

uses LazarusFiscal. Utils;

constructor TIcms70.Create(const AValorProduto, AValorFrete, AValorSeguro, ADespesasAcessorias, AValorDesconto, AAliquotaIcms,
  APercentualReducao, AAliquotaIcmsST, AMva: Double; const APercentualReducaoST: Double = 0; const AValorIpi: Double = 0);
begin
  FBaseIcmsProprio := TBaseIcmsProprio.Create(AValorProduto, AValorFrete, AValorSeguro, ADespesasAcessorias, AValorDesconto,
    APercentualReducao);
  FIcmsProprio := TValorIcms.Create(FBaseIcmsProprio, AAliquotaIcms);
  FBaseIcmsST := TBaseIcmsST.Create(FBaseIcmsProprio, AMva, APercentualReducaoST);
  FIcmsST := TValorIcmsST.Create(FBaseIcmsST, AAliquotaIcmsST, FIcmsProprio);
end;

destructor TIcms70.Destroy;
begin
  FIcmsST.Free;
  FBaseIcmsST.Free;
  FIcmsProprio.Free;
  FBaseIcmsProprio.Free;
  inherited;
end;

class function TIcms70.New(const AValorProduto, AValorFrete, AValorSeguro, ADespesasAcessorias, AValorDesconto, AAliquotaIcms,
  APercentualReducao, AAliquotaIcmsST, AMva, APercentualReducaoST, AValorIpi: Double): IIcms70;
begin
  Result := TIcms70.Create(AValorProduto, AValorFrete, AValorSeguro, ADespesasAcessorias, AValorDesconto, AAliquotaIcms,
    APercentualReducao, AAliquotaIcmsST, AMva, APercentualReducaoST, AValorIpi);
end;

function TIcms70.ValorBaseIcmsST: Double;
begin
  Result := FBaseIcmsST.CalcularBaseIcmsST;
end;

function TIcms70.ValorBaseReduzidaIcmsProprio: Double;
begin
  Result := FBaseIcmsProprio.CalcularBaseReduzida;
end;

function TIcms70.ValorIcmsDesonerado: Double;
var
  LValorIcmsNormal: Double;
begin
  LValorIcmsNormal := FIcmsProprio.CalcularValorNormalIcms;
  Result := RoundABNT(LValorIcmsNormal - FIcmsProprio.CalcularValorReduzidoIcms, 2);
end;

function TIcms70.ValorIcmsProprio: Double;
begin
  Result := RoundABNT(FIcmsProprio.GetValorIcms, 2);
end;

function TIcms70.ValorIcmsST: Double;
begin
  Result := RoundABNT(FIcmsST.CalcularValorIcmsST, 2);
end;

function TIcms70.ValorIcmsSTDesonerado(const AValorIcmsStNormal: Double): Double;
begin
  Result := RoundABNT(AValorIcmsStNormal - FIcmsST.CalcularValorIcmsST, 2);
end;

end.
