import 'package:flutter_bloc/flutter_bloc.dart';

class RewardPointsPageState {
  String selectedPoints;

  RewardPointsPageState({
    this.selectedPoints,
  });
}

class RewardPointsPageCubit extends Cubit<RewardPointsPageState> {
  RewardPointsPageCubit()
      : super(
          RewardPointsPageState(
            selectedPoints: null,
          ),
        );

  void updateSelectedEventType(String eventType) =>
      emit(RewardPointsPageState(selectedPoints: eventType));
}
