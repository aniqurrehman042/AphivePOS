import 'package:aphive_pos/cubits/home_page_cubit.dart';
import 'package:aphive_pos/cubits/main_page_cubit.dart';
import 'package:aphive_pos/cubits/reward_points_page_cubit.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page_view_model.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/offers_page/offers_page_view_model.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/retrieve_offer_page/retrieve_offer_page_view_model.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/reward_points_page/reward_points_page_view_model.dart';
import 'package:get/get.dart';

class DependencyInjector {
  static void injectDependencies() {
    /// View Models
    Get.put(HomePageViewModel());
    Get.put(RetrieveOfferPageViewModel());
    Get.put(RewardPointsPageViewModel());
    Get.put(OffersPageViewModel());

    /// Cubits
    Get.put(MainPageCubit());
    Get.put(HomePageCubit());
    Get.put(RewardPointsPageCubit());
  }
}
