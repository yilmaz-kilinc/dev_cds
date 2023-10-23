@AbapCatalog.sqlViewName: 'ZYILMAZK_5092_V1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS  1'
define view zyilmazk_5092_cds_001
  as select from mara
{
  key matnr,
      mtart,
      meins
}
