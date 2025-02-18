@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking processor projection'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZEY_BK_BOOKING_APPROVER as projection on ZEY_bk_BOOKING
{

  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      FlightPrice,
      CurrencyCode,
      BookingStatus,
      LastChangedAt,
      /* Associations */
      _BookingStatus,
      _BookingSupplement: redirected to composition child ZEY_BK_BOOKING_suppl_APPROVER,
      _Carrier,
      _Connection,
      _Customer,
      _Travel            : redirected to parent ZEY_BK_TRAVEL_APPROVER

}
