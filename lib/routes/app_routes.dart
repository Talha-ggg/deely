import 'package:deely/presentation/screens/landing/landing.dart';
import 'package:deely/routes/route_titles.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: RoutesTitles.signInPage,
      page: () => BottomNavBar(),
    ), GetPage(
      name: RoutesTitles.homePage,
      page: () =>  BottomNavBar(),
    ),
  ];
}
