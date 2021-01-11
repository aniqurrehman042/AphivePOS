import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomePageState {
  String selectedEventType;

  HomePageState({
    this.selectedEventType,
  });
}

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(
          HomePageState(
            selectedEventType: null,
          ),
        );

  void updateSelectedEventType(String eventType) =>
      emit(HomePageState(selectedEventType: eventType));
}
