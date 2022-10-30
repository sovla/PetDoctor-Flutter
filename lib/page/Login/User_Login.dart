import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet_doctor/routes/links.dart';
import 'package:pet_doctor/routes/routes.dart';

class UserLoginPage extends StatefulWidget {
  const UserLoginPage({super.key});

  @override
  State<UserLoginPage> createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("UserLoginPage"),
          ...AppRoutes.userRoutes
              .where((element) => element.name != AppLinks.USER_LOGIN)
              .map(
                (e) => ElevatedButton(
                    onPressed: () => Get.toNamed(e.name), child: Text(e.name)),
              )
              .toList(),
        ],
      ),
    );
  }
}
