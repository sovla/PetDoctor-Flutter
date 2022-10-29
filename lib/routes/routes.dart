import 'package:get/get.dart';
import 'package:pet_doctor/page/Home/Home.dart';
import 'package:pet_doctor/page/Login/User_Login.dart';
import 'package:pet_doctor/routes/guards.dart';

import 'links.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: AppLinks.USER_LOGIN,
      page: () => const UserLoginPage(),
    ),
    GetPage(
      name: AppLinks.HOME,
      page: () => const HomePage(),
      middlewares: [
        AuthGuard(),
      ],
      children: [
        GetPage(
          name: AppLinks.HOME,
          page: () => const HomePage(),
        ),
        GetPage(
          name: AppLinks.HOME,
          page: () => const HomePage(),
        ),
        GetPage(
          name: AppLinks.HOME,
          page: () => const HomePage(),
        ),
      ],
    ),
    GetPage(
      name: AppLinks.ADMIN,
      page: () => const HomePage(),
      middlewares: [
        // Allow only admins to get through
        AuthGuard(),
        AuthorizationGuard()
      ],
    )
  ];
}
