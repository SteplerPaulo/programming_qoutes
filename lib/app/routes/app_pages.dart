import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/pq_home/bindings/pq_home_binding.dart';
import '../modules/pq_home/views/pq_home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PQ_HOME,
      page: () => const PqHomeView(),
      binding: PqHomeBinding(),
    ),
  ];
}
