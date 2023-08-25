import 'package:get/get.dart';
import 'package:to_do_app/pages/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;
  static const defaultTransaction = Transition.rightToLeft;

  static final routes = [
    GetPage(
        name: Paths.home,
        page: () => const HomePage(),
        transition: defaultTransaction,
        transitionDuration: const Duration(milliseconds: 500)),
  ];
}
