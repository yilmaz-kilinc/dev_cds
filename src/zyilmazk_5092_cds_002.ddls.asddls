@AbapCatalog.sqlViewName: 'ZYILMAZK_5092_V2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS  2' 
define view zyilmazk_5092_cds_002
  as select from ekpo as _po
    inner join   ekko as _ko on(
      _ko.ebeln = _po.ebeln
    )
    inner join   mara as _ma on(
      _ma.matnr = _po.matnr
    )
    left outer join   makt as _mk on(
      _mk.matnr    = _ma.matnr
    and  _mk.spras = $session.system_language
    )
    inner join   lfa1 as _lf on(
      _lf.lifnr = _ko.lifnr
    )
{
  _po.ebeln,
  _po.ebelp,
  _po.matnr,
  _mk.maktx,
  _po.werks,
  _po.lgort,
  _po.meins,
  _lf.lifnr,
  _lf.adrnr,
  concat_with_space( _lf.stras, _lf.mcod3, 1 ) as address
}
