import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class RewardPointsPageState {
  String selectedPoints;

  RewardPointsPageState({
    this.selectedPoints,
  });
}

class RewardPointsPageCubit extends Cubit<RewardPointsPageState> {
  RewardPointsPageCubit() : super(
    RewardPointsPageState(
      selectedPoints: null,
    ),
  );

  void updateSelectedEventType(String eventType) =>
      emit(RewardPointsPageState(selectedPoints: eventType));
}
