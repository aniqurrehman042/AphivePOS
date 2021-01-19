import 'package:aphive_pos/cubits/home_page_cubit.dart';
import 'package:aphive_pos/data/models/event.dart';
import 'package:aphive_pos/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomePageViewModel {
  List<String> typesOfEvents = [
    'Event A',
    'Event B',
    'Event C',
    'Event D',
  ];

  List<Event> events = [
    Event(
      eventId: 'Id 1',
      eventType: 'Type 1',
      quantity: '1',
      date: '12/10/2020',
      user: 'User 1',
      eventName: 'Event 1',
      field1: 'Field 1',
      field2: 'Field 2',
      field3: 'Field 3',
      field4: 'Field 4',
      field5: 'Field 5',
      field6: 'Field 6',
    ),

    Event(
      eventId: 'Id 2',
      eventType: 'Type 2',
      quantity: '1',
      date: '12/10/2020',
      user: 'User 2',
      eventName: 'Event 2',
      field1: 'Field 1',
      field2: 'Field 2',
      field3: 'Field 3',
      field4: 'Field 4',
      field5: 'Field 5',
      field6: 'Field 6',
    ),

    Event(
      eventId: 'Id 1',
      eventType: 'Type 1',
      quantity: '1',
      date: '12/10/2020',
      user: 'User 1',
      eventName: 'Event 1',
      field1: 'Field 1',
      field2: 'Field 2',
      field3: 'Field 3',
      field4: 'Field 4',
      field5: 'Field 5',
      field6: 'Field 6',
    ),

    Event(
      eventId: 'Id 1',
      eventType: 'Type 1',
      quantity: '1',
      date: '12/10/2020',
      user: 'User 1',
      eventName: 'Event 1',
      field1: 'Field 1',
      field2: 'Field 2',
      field3: 'Field 3',
      field4: 'Field 4',
      field5: 'Field 5',
      field6: 'Field 6',
    ),

    Event(
      eventId: 'Id 3',
      eventType: 'Type 3',
      quantity: '3',
      date: '12/10/2020',
      user: 'User 3',
      eventName: 'Event 3',
      field1: 'Field 1',
      field2: 'Field 2',
      field3: 'Field 3',
      field4: 'Field 4',
      field5: 'Field 5',
      field6: 'Field 6',
    ),

    Event(
      eventId: 'Id 1',
      eventType: 'Type 1',
      quantity: '1',
      date: '12/10/2020',
      user: 'User 1',
      eventName: 'Event 1',
      field1: 'Field 1',
      field2: 'Field 2',
      field3: 'Field 3',
      field4: 'Field 4',
      field5: 'Field 5',
      field6: 'Field 6',
    ),

    Event(
      eventId: 'Id 1',
      eventType: 'Type 1',
      quantity: '1',
      date: '12/10/2020',
      user: 'User 1',
      eventName: 'Event 1',
      field1: 'Field 1',
      field2: 'Field 2',
      field3: 'Field 3',
      field4: 'Field 4',
      field5: 'Field 5',
      field6: 'Field 6',
    ),

    Event(
      eventId: 'Id 1',
      eventType: 'Type 1',
      quantity: '1',
      date: '12/10/2020',
      user: 'User 1',
      eventName: 'Event 1',
      field1: 'Field 1',
      field2: 'Field 2',
      field3: 'Field 3',
      field4: 'Field 4',
      field5: 'Field 5',
      field6: 'Field 6',
    ),
  ];

  getTableRowColor(int index) {
    return index % 2 == 0 ? Colors.white : lightGrey;
  }
}