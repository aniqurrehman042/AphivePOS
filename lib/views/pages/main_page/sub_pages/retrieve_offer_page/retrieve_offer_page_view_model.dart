import 'package:aphive_pos/data/models/order.dart';

class RetrieveOfferPageViewModel {
  Order offer = Order(
    orderName: 'Offer Name',
    orderDescription: 'Offer Description',
    quantity: 'Quantity',
    orderValue: 'Offer Value',
    fulfillmentPeriod: 'Fulfillment Period',
    refundableStatus: 'Refundable Status',
    username: 'Username',
  );
}