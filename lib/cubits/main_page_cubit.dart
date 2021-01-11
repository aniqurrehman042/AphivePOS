import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPageState {
  String currentPage;
  bool isScan;

  MainPageState({
    this.currentPage,
    this.isScan,
  });
}

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit()
      : super(MainPageState(
          currentPage: HomePage.tag,
          isScan: false,
        ));

  void switchPage(String pageTag) => emit(MainPageState(currentPage: pageTag));
  void switchScan(bool isScan) => emit(MainPageState(currentPage: state.currentPage, isScan: isScan));
  void switchPageAndScan({String pageTag, bool isScan}) => emit(MainPageState(currentPage: pageTag, isScan: isScan));
}
