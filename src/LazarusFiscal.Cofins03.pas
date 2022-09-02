unit LazarusFiscal. Cofins03;

{$mode Delphi}

interface

uses LazarusFiscal. Cofins03.Intf;

type
  TCofins03 = class(TInterfacedObject, ICofins03)
  private
    FQuantidadeTributada: Double;
    FValorUnidadeTributada: Double;
    function ValorCofins: Double;
    function QuantidadeTributada(const AValue: Double): ICofins03;
    function ValorPorUnidadeTributada(const AValue: Double): ICofins03;
  public
    constructor Create(const AQuantidadeTributada, AValorPorUnidadeTributada: Double); overload;
    class function New(const AQuantidadeTributada, AValorPorUnidadeTributada: Double): ICofins03; overload;
    class function New: ICofins03; overload;
  end;

implementation

uses LazarusFiscal. Utils;

constructor TCofins03.Create(const AQuantidadeTributada, AValorPorUnidadeTributada: Double);
begin
  FQuantidadeTributada := AQuantidadeTributada;
  FValorUnidadeTributada := AValorPorUnidadeTributada;
end;

class function TCofins03.New(const AQuantidadeTributada, AValorPorUnidadeTributada: Double): ICofins03;
begin
  Result := TCofins03.Create(AQuantidadeTributada, AValorPorUnidadeTributada);
end;

class function TCofins03.New: ICofins03;
begin
  Result := TCofins03.Create;
end;

function TCofins03.ValorCofins: Double;
begin
  Result := RoundABNT((FQuantidadeTributada * FValorUnidadeTributada), 2);
end;

function TCofins03.QuantidadeTributada(const AValue: Double): ICofins03;
begin
  FQuantidadeTributada := AValue;
  Result := Self;
end;

function TCofins03.ValorPorUnidadeTributada(const AValue: Double): ICofins03;
begin
  FValorUnidadeTributada := AValue;
  Result := Self;
end;

end.
