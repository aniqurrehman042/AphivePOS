import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageState {
  String selectedEventType;

  HomePageState({
    this.selectedEventType,
  });
}

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit()
      : super(
          HomePageState(
            selectedEventType: null,
          ),
        );

  void updateSelectedEventType(String eventType) =>
      emit(HomePageState(selectedEventType: eventType));
}
