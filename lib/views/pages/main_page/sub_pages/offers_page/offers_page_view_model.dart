import 'package:aphive_pos/data/models/order.dart';

class OffersPageViewModel {
  List<Order> orders = [
    Order(
      orderName: 'Any Jeans and Any Belt',
      orderDescription: 'Get any jeans from the new collection and pair it with any belt of your liking',
      fulfillmentPeriod: 'Until end of March 2021',
      orderValue: '€120.00',
      quantity: '11',
    ),
    Order(
      orderName: 'Any Jeans and Any Belt',
      orderDescription: 'Get any jeans from the new collection and pair it with any belt of your liking',
      fulfillmentPeriod: 'Until end of March 2021',
      orderValue: '€750.00',
      quantity: '7',
    ),
    Order(
      orderName: 'Any Jeans and Any Belt',
      orderDescription: 'Get any jeans from the new collection and pair it with any belt of your liking',
      fulfillmentPeriod: 'Until end of March 2021',
      orderValue: '€250.00',
      quantity: '2',
    ),
  ];
}