@AbapCatalog.sqlViewName: 'ZYILMAZK_5092_V4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@ClientHandling.type: #INHERITED
@ClientHandling.algorithm: #AUTOMATED
@AbapCatalog.buffering.status: #ACTIVE
@AbapCatalog.buffering.type: #FULL
@EndUserText.label: 'CDS  4'
define view zyilmazk_5092_cds_004
  as select from zyilmazk_5092_cds_003 as _cds3
{
  _cds3.vbeln,
  sum(_cds3.conversion_netwr)                as Toplam_Net_Deger,
  _cds3.kunnrAd,
  count(*)                                   as Toplam_Fatura_Adedi,
  division(cast( sum(conversion_netwr) as abap.curr( 10, 3 ) ),
           cast( count(*) as abap.int1 ), 3) as Ortalama_Miktar,
  left(fkdat,4)                              as Faturalama_Yili,
  substring(fkdat,5,2)                       as Faturalama_Ayi,
  substring(fkdat,7,2)                       as Faturalama_Gunu,
  substring(inco2_l,1,3)                     as Incoterm_Yeri,
  fkdat
}
group by
  _cds3.vbeln,
  _cds3.kunnrAd,
  _cds3.fkdat,
  _cds3.inco2_l
