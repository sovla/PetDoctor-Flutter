import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet_doctor/routes/routes.dart';

class MyMenuHomePage extends StatelessWidget {
  const MyMenuHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('MyMenuHomePage'),
          ...AppRoutes.myMenuRoutes
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
