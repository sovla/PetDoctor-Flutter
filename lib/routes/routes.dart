import 'package:get/get.dart';
import 'package:pet_doctor/routes/guards.dart';

import 'links.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: AppLinks.LOGIN,
      page: () => Login(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppLinks.DASHBOARD,
      page: () => Dashboard(),
      middlewares: [
        AuthGuard(),
      ],
      children: [
        GetPage(
          name: AppLinks.PRODUCTS,
          page: () => Products(),
        ),
        GetPage(
          name: AppLinks.FAVORITES,
          page: () => Favorites(),
        ),
        GetPage(
          name: AppLinks.ORDERS,
          page: () => Orders(),
        ),
      ],
    ),
    GetPage(
      name: AppLinks.ADMIN,
      page: () => AdminDashboard(),
      middlewares: [
        // Allow only admins to get through
        AuthGuard(),
        AuthorizationGuard()
      ],
    )
  ];
}
