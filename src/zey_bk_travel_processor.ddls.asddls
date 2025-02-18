@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZEY_BK_TRAVEL_PROCESSOR
  as projection on zey_bk_travel
{
  key     TravelId,
          AgencyId,
          CustomerId,
          BeginDate,
          EndDate,
          BookingFee,
          TotalPrice,
          CurrencyCode,
          Description,
          OverallStatus,
          CreatedBy,
          CreatedAt,
          LastChangedBy,
          LastChangedAt,
          AgencyName,
          CustomerName,
          StatusText,
          Criticality,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_EY_BK_VE_CALC'
          @EndUserText.label: 'CO2 TAX'
  virtual CO2TAX         : abap.int4,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_EY_BK_VE_CALC'
          @EndUserText.label: 'Week Day'
  virtual dayOfTheFlight : abap.char( 9 ),
          /* Associations */
          _Agency,
          _Booking : redirected to composition child ZEY_BK_BOOKING_PROCESSOR,
          _Currency,
          _Customer,
          _OverallStatus

}
