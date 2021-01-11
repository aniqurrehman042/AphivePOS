import 'package:aphive_pos/data/models/offer.dart';

class RetrieveOfferPageViewModel {
  Offer offer = Offer(
    offerName: 'Offer Name',
    offerDescription: 'Offer Description',
    quantity: 'Quantity',
    offerValue: 'Offer Value',
    fulfillmentPeriod: 'Fulfillment Period',
    refundableStatus: 'Refundable Status',
    username: 'Username',
  );
}