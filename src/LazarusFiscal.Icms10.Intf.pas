unit LazarusFiscal. Icms10.Intf;

{$mode Delphi}

interface

type
  IIcms10 = interface
    ['{DFD62780-2371-458E-A061-6714FBC4E08B}']
    function ValorBaseIcmsProprio: Double;
    function ValorIcmsProprio: Double;
    function ValorBaseIcmsST: Double;
    function ValorIcmsST: Double;
    function ValorIcmsSTDesonerado: Double;
  end;

implementation

end.
