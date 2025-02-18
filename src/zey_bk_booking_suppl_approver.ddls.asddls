@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking supplement processor'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZEY_BK_BOOKING_SUPPL_APPROVER
  as projection on ZEY_Bk_BOOKSUPPL
{
  key TravelId,
  key BookingId,
  key BookingSupplementId,
      SupplementId,
      Price,
      CurrencyCode,
      LastChangedAt,
      /* Associations */
      _Booking : redirected to parent ZEY_BK_BOOKING_APPROVER,
      _Product,
      _SupplementText,
      //_Travel
      _Travel  : redirected to ZEY_BK_TRAVEL_APPROVER
}
