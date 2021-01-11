import 'package:aphive_pos/data/models/offer.dart';

class OffersPageViewModel {
  List<Offer> offers = [
    Offer(
      offerName: 'Any Jeans and Any Belt',
      offerDescription: 'Get any jeans from the new collection and pair it with any belt of your liking',
      fulfillmentPeriod: 'Until end of March 2021',
      offerValue: '€120.00',
      quantity: '11',
    ),
    Offer(
      offerName: 'Any Jeans and Any Belt',
      offerDescription: 'Get any jeans from the new collection and pair it with any belt of your liking',
      fulfillmentPeriod: 'Until end of March 2021',
      offerValue: '€750.00',
      quantity: '7',
    ),
    Offer(
      offerName: 'Any Jeans and Any Belt',
      offerDescription: 'Get any jeans from the new collection and pair it with any belt of your liking',
      fulfillmentPeriod: 'Until end of March 2021',
      offerValue: '€250.00',
      quantity: '2',
    ),
  ];
}