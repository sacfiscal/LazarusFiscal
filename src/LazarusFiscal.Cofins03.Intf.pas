unit LazarusFiscal. Cofins03.Intf;

{$mode Delphi}

interface

type
  ICofins03 = interface
    ['{20877889-9559-4916-9D7A-1CEB3367ADD3}']
    function ValorCofins: Double;
    function QuantidadeTributada(const AValue: Double): ICofins03;
    function ValorPorUnidadeTributada(const AValue: Double): ICofins03;
  end;

implementation

end.
