unit Samples.Lazarus.Main;

{$mode objfpc}{$H+}

interface

uses
  Classes,
  SysUtils,
  Forms,
  Controls,
  Graphics,
  Dialogs,
  ExtCtrls,
  ComCtrls,
  StdCtrls;

type

  { TFrmMain }

  TFrmMain = class(TForm)
    btCofins0102: TButton;
    btCofins03: TButton;
    btIcms00: TButton;
    btIcms10: TButton;
    btIcms101: TButton;
    btIcms20: TButton;
    btIcms201: TButton;
    btIcms202_203: TButton;
    btIcms30: TButton;
    btIcms51: TButton;
    btIcms70: TButton;
    btIpi50AdValorem: TButton;
    btIpi50AliqEspecifica: TButton;
    btPis0102: TButton;
    btPis03: TButton;
    edAliqCofins: TEdit;
    edAliqIcms: TEdit;
    edAliqIpi: TEdit;
    edAliqPis: TEdit;
    edAliqST: TEdit;
    edDiferimento: TEdit;
    edMVA: TEdit;
    edPercentualCreditoSN: TEdit;
    edPercRedST: TEdit;
    edQtdeCofinsUn: TEdit;
    edQtdeIpiTributada: TEdit;
    edQtdePisUn: TEdit;
    edReducao: TEdit;
    edValorCofinsUn: TEdit;
    edValorDesconto: TEdit;
    edValorDespesas: TEdit;
    edValorFrete: TEdit;
    edValorIpi: TEdit;
    edValorIpiUn: TEdit;
    edValorPisUn: TEdit;
    edValorProduto: TEdit;
    edValorSeguro: TEdit;
    GroupBox1: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label5: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label6: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbPCredSN101: TLabel;
    lbPCredSN201: TLabel;
    lbVBC00: TLabel;
    lbVBC10: TLabel;
    lbVBC20: TLabel;
    lbVBC51: TLabel;
    lbVBC70: TLabel;
    lbVBCCOFINS01_02: TLabel;
    lbvBCIpi50av: TLabel;
    lbVBCPIS01_02: TLabel;
    lbVBCST10: TLabel;
    lbVBCST201: TLabel;
    lbVBCST202: TLabel;
    lbVBCST30: TLabel;
    lbVBCST70: TLabel;
    lbVCOFINS01_02: TLabel;
    lbVCOFINS03: TLabel;
    lbVcredSN101: TLabel;
    lbVCredSN201: TLabel;
    lbVICMS00: TLabel;
    lbVICMS10: TLabel;
    lbVICMS20: TLabel;
    lbVICMS51: TLabel;
    lbVICMS70: TLabel;
    lbVICMSDESON20: TLabel;
    lbVICMSDeson70: TLabel;
    lbVICMSDIF: TLabel;
    lbVICMSOP: TLabel;
    lbVICMSST10: TLabel;
    lbVICMSST201: TLabel;
    lbVICMSST202: TLabel;
    lbVICMSST30: TLabel;
    lbVICMSST70: TLabel;
    lbVICMSSTDeson10: TLabel;
    lbVICMSSTDeson30: TLabel;
    lbVICMSSTDeson70: TLabel;
    lbVIPI50av: TLabel;
    lbVipi50Especifico: TLabel;
    lbVPIS01_02: TLabel;
    lbVPIS03: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    procedure btCofins0102Click(Sender: TObject);
    procedure btCofins03Click(Sender: TObject);
    procedure btIcms00Click(Sender: TObject);
    procedure btIcms101Click(Sender: TObject);
    procedure btIcms10Click(Sender: TObject);
    procedure btIcms201Click(Sender: TObject);
    procedure btIcms202_203Click(Sender: TObject);
    procedure btIcms20Click(Sender: TObject);
    procedure btIcms30Click(Sender: TObject);
    procedure btIcms51Click(Sender: TObject);
    procedure btIcms70Click(Sender: TObject);
    procedure btIpi50AdValoremClick(Sender: TObject);
    procedure btIpi50AliqEspecificaClick(Sender: TObject);
    procedure btPis0102Click(Sender: TObject);
    procedure btPis03Click(Sender: TObject);
  private

  public

  end;

var
  FrmMain: TFrmMain;

implementation

uses
  LazarusFiscal.Icms00,
  LazarusFiscal.Icms00.Intf,
  LazarusFiscal.Icms20,
  LazarusFiscal.Icms20.Intf,
  LazarusFiscal.Icms51,
  LazarusFiscal.Icms51.Intf,
  LazarusFiscal.Icms10.Intf,
  LazarusFiscal.Icms10,
  LazarusFiscal.Icms30.Intf,
  LazarusFiscal.Icms30,
  LazarusFiscal.Icms70,
  LazarusFiscal.Icms70.Intf,
  LazarusFiscal.Icms101.Intf,
  LazarusFiscal.Icms101,
  LazarusFiscal.Icms201,
  LazarusFiscal.Icms201.Intf,
  LazarusFiscal.Icms202_203,
  LazarusFiscal.Icms202_203.Intf,
  LazarusFiscal.Ipi50AdValorem,
  LazarusFiscal.Ipi50AdValorem.Intf,
  LazarusFiscal.Ipi50Especifico.Intf,
  LazarusFiscal.Ipi50Especifico,
  LazarusFiscal.Pis01_02.Intf,
  LazarusFiscal.Pis01_02,
  LazarusFiscal.Pis03.Intf,
  LazarusFiscal.Pis03,
  LazarusFiscal.Cofins01_02.Intf,
  LazarusFiscal.Cofins01_02,
  LazarusFiscal.Cofins03.Intf,
  LazarusFiscal.Cofins03;

{$R *.lfm}

{ TFrmMain }

procedure TFrmMain.btIcms00Click(Sender: TObject);
var
  LIcms00: IIcms00;
begin
  LIcms00 := TIcms00.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edValorDesconto.Text, 0), {}
    StrToFloatDef(edAliqIcms.Text, 0), {}
    StrToFloatDef(edValorIpi.Text, 0));

  lbVBC00.Caption   := LIcms00.BaseIcmsProprio.ToString;
  lbVICMS00.Caption := LIcms00.ValorIcmsProprio.ToString;
end;

procedure TFrmMain.btCofins0102Click(Sender: TObject);
var
  LCofins01_02: ICofins01_02;
begin
  LCofins01_02 := {}
    TCofins01_02.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edValorDesconto.Text, 0), {}
    StrToFloatDef(edAliqCofins.Text, 0));

  lbVBCCOFINS01_02.Caption := LCofins01_02.BaseCofins.ToString;
  lbVCOFINS01_02.Caption   := LCofins01_02.ValorCofins.ToString;
end;

procedure TFrmMain.btCofins03Click(Sender: TObject);
begin
  lbVCOFINS03.Caption := TCofins03.New
    .QuantidadeTributada(StrToFloatDef(edQtdeCofinsUn.Text, 0))
    .ValorPorUnidadeTributada(StrToFloatDef(edValorCofinsUn.Text, 0))
    .ValorCofins.ToString;
end;

procedure TFrmMain.btIcms101Click(Sender: TObject);
var
  LIcms101: IIcms101;
begin
  LIcms101 := TIcms101.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edValorDesconto.Text, 0), {}
    StrToFloatDef(edPercentualCreditoSN.Text, 0), {}
    StrToFloatDef(edReducao.Text, 0));

  lbPCredSN101.Caption := edPercentualCreditoSN.Text;
  lbVcredSN101.Caption := LIcms101.ValorCreditoSN.ToString;
end;

procedure TFrmMain.btIcms10Click(Sender: TObject);
var
  LIcms10: IIcms10;
begin
  LIcms10 := TIcms10.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edValorDesconto.Text, 0), {}
    StrToFloatDef(edAliqIcms.Text, 0), {}
    StrToFloatDef(edAliqST.Text, 0), {}
    StrToFloatDef(edMVA.Text, 0), {}
    StrToFloatDef(edPercRedST.Text, 0), {}
    StrToFloatDef(edValorIpi.Text, 0));

  lbVBC10.Caption          := LIcms10.ValorBaseIcmsProprio.ToString;
  lbVICMS10.Caption        := LIcms10.ValorIcmsProprio.ToString;
  lbVBCST10.Caption        := LIcms10.ValorBaseIcmsST.ToString;
  lbVICMSST10.Caption      := LIcms10.ValorIcmsST.ToString;
  lbVICMSSTDeson10.Caption := LIcms10.ValorIcmsSTDesonerado.ToString;
end;

procedure TFrmMain.btIcms201Click(Sender: TObject);
var
  LIcms201: IIcms201;
begin
  LIcms201 := TIcms201.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edValorDesconto.Text, 0), {}
    StrToFloatDef(edAliqIcms.Text, 0), {}
    StrToFloatDef(edReducao.Text, 0), {}
    StrToFloatDef(edPercentualCreditoSN.Text, 0), {}
    StrToFloatDef(edAliqST.Text, 0), {}
    StrToFloatDef(edMVA.Text, 0), {}
    StrToFloatDef(edPercRedST.Text, 0));

  lbPCredSN201.Caption := edPercentualCreditoSN.Text;
  lbVCredSN201.Caption := LIcms201.ValorCreditoSN.ToString;
  lbVBCST201.Caption   := LIcms201.ValorBaseIcmsST.ToString;
  lbVICMSST201.Caption := LIcms201.ValorIcmsST.ToString;
end;

procedure TFrmMain.btIcms202_203Click(Sender: TObject);
var
  LIcms202_203: IIcms202_203;
begin
  LIcms202_203 := TIcms202_203.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edValorDesconto.Text, 0), {}
    StrToFloatDef(edAliqIcms.Text, 0), {}
    StrToFloatDef(edReducao.Text, 0), {}
    StrToFloatDef(edAliqST.Text, 0), {}
    StrToFloatDef(edMVA.Text, 0), {}
    StrToFloatDef(edPercRedST.Text, 0));

  lbVBCST202.Caption   := LIcms202_203.ValorBaseIcmsST.ToString;
  lbVICMSST202.Caption := LIcms202_203.ValorIcmsST.ToString;
end;

procedure TFrmMain.btIcms20Click(Sender: TObject);
var
  LIcms20: IIcms20;
begin
  LIcms20 := TIcms20.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edValorDesconto.Text, 0), {}
    StrToFloatDef(edAliqIcms.Text, 0), {}
    StrToFloatDef(edReducao.Text, 0), {}
    StrToFloatDef(edValorIpi.Text, 0));

  lbVBC20.Caption        := LIcms20.BaseReduzidaIcmsProprio.ToString;
  lbVICMS20.Caption      := LIcms20.ValorIcmsProprio.ToString;
  lbVICMSDESON20.Caption := LIcms20.ValorIcmsDesonerado.ToString;
end;

procedure TFrmMain.btIcms30Click(Sender: TObject);
var
  LIcms30: IIcms30;
begin
  LIcms30 := TIcms30.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edValorDesconto.Text, 0), {}
    StrToFloatDef(edAliqIcms.Text, 0), {}
    StrToFloatDef(edAliqST.Text, 0), {}
    StrToFloatDef(edMVA.Text, 0), {}
    StrToFloatDef(edPercRedST.Text, 0), {}
    StrToFloatDef(edValorIpi.Text, 0));

  lbVBCST30.Caption        := LIcms30.ValorBaseIcmsST.ToString;
  lbVICMSST30.Caption      := LIcms30.ValorIcmsST.ToString;
  lbVICMSSTDeson30.Caption := LIcms30.ValorIcmsDesonerado.ToString;
end;

procedure TFrmMain.btIcms51Click(Sender: TObject);
var
  LIcms51: IIcms51;
begin
  LIcms51 := TIcms51.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edValorDesconto.Text, 0), {}
    StrToFloatDef(edAliqIcms.Text, 0), {}
    StrToFloatDef(edDiferimento.Text, 0), {}
    StrToFloatDef(edReducao.Text, 0), {}
    StrToFloatDef(edValorIpi.Text, 0));

  lbVBC51.Caption    := LIcms51.BaseIcmsProprio.ToString;
  lbVICMSOP.Caption  := LIcms51.ValorIcmsOperacao.ToString;
  lbVICMSDIF.Caption := LIcms51.ValorIcmsDiferido.ToString;
  lbVICMS51.Caption  := LIcms51.ValorIcmsProprio.ToString;
end;

procedure TFrmMain.btIcms70Click(Sender: TObject);
var
  LIcms10: IIcms10;
  LIcms70: IIcms70;
begin
  LIcms70 := TIcms70.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edValorDesconto.Text, 0), {}
    StrToFloatDef(edAliqIcms.Text, 0), {}
    StrToFloatDef(edReducao.Text, 0), {}
    StrToFloatDef(edAliqST.Text, 0), {}
    StrToFloatDef(edMVA.Text, 0), {}
    StrToFloatDef(edPercRedST.Text, 0), {}
    StrToFloatDef(edValorIpi.Text, 0));

  lbVBC70.Caption        := LIcms70.ValorBaseReduzidaIcmsProprio.ToString;
  lbVICMS70.Caption      := LIcms70.ValorIcmsProprio.ToString;
  lbVICMSDeson70.Caption := LIcms70.ValorIcmsDesonerado.ToString;
  lbVBCST70.Caption      := LIcms70.ValorBaseIcmsST.ToString;
  lbVICMSST70.Caption    := LIcms70.ValorIcmsST.ToString;

  LIcms10 := TIcms10.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edValorDesconto.Text, 0), {}
    StrToFloatDef(edAliqIcms.Text, 0), {}
    StrToFloatDef(edAliqST.Text, 0), {}
    StrToFloatDef(edMVA.Text, 0), {}
    StrToFloatDef(edValorIpi.Text, 0));

  lbVICMSSTDeson70.Caption := LIcms70.ValorIcmsSTDesonerado(LIcms10.ValorIcmsST).ToString;
end;

procedure TFrmMain.btIpi50AdValoremClick(Sender: TObject);
var
  LIpi50Av: IIpi50AdValorem;
begin
  LIpi50Av := TIpi50AdValorem.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edAliqIpi.Text, 0));

  lbvBCIpi50av.Caption := LIpi50Av.BaseIpi.ToString;
  lbVIPI50av.Caption   := LIpi50Av.ValorIpi.ToString;
end;

procedure TFrmMain.btIpi50AliqEspecificaClick(Sender: TObject);
begin
  lbVipi50Especifico.Caption := TIpi50Especifico.New
    .QuantidadeTributada(StrToFloatDef(edQtdeIpiTributada.Text, 0))
    .ValorPorUnidadeTributada(StrToFloatDef(edValorIpiUn.Text, 0))
    .ValorIpi.ToString;
end;

procedure TFrmMain.btPis0102Click(Sender: TObject);
var
  LPis01_02: IPIs01_02;
begin
  LPis01_02 := TPis01_02.Create({}
    StrToFloatDef(edValorProduto.Text, 0), {}
    StrToFloatDef(edValorFrete.Text, 0), {}
    StrToFloatDef(edValorSeguro.Text, 0), {}
    StrToFloatDef(edValorDespesas.Text, 0), {}
    StrToFloatDef(edValorDesconto.Text, 0), {}
    StrToFloatDef(edAliqPis.Text, 0));

  lbVBCPIS01_02.Caption := LPis01_02.BasePis.ToString;
  lbVPIS01_02.Caption   := LPis01_02.ValorPis.ToString;
end;

procedure TFrmMain.btPis03Click(Sender: TObject);
begin
  lbVPIS03.Caption := TPis03.New
    .QuantidadeTributada(StrToFloatDef(edQtdePisUn.Text, 0))
    .ValorPorUnidadeTributada(StrToFloatDef(edValorPisUn.Text, 0))
    .ValorPis.ToString;
end;

end.

