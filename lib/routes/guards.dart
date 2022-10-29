import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_doctor/routes/links.dart';
import 'package:pet_doctor/routes/services/auth_service.dart';
import 'package:pet_doctor/routes/services/authorization_service.dart';

class AuthGuard extends GetMiddleware {
  final authService = Get.find<AuthService>();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (authService.isAuthenticated) {
      return const RouteSettings(name: AppLinks.USER_LOGIN);
    } else {
      return const RouteSettings(name: AppLinks.HOME);
    }
  }
}

class AuthorizationGuard extends GetMiddleware {
  final authzGuard = Get.find<AuthorizationService>();

  @override
  int? get priority => 2;

  @override
  RouteSettings? redirect(String? route) {
    if (authzGuard.isManager) {
      return const RouteSettings(name: AppLinks.ADMIN);
    }
    return super.redirect(route);
  }
}
