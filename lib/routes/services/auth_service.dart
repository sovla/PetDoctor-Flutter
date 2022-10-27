import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

class AuthService extends GetxService {
  late final isAuthenticated;

  @override
  void onInit() {
    isAuthenticated = false;
    return super.onInit();
  }

  void updateAuth() {
    isAuthenticated = false;
  }
}
