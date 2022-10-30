import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet_doctor/routes/links.dart';
import 'package:pet_doctor/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Home"),
          ...AppRoutes.mainRoutes
              .map(
                (e) => ElevatedButton(
                    onPressed: () => Get.toNamed(e.name), child: Text(e.name)),
              )
              .toList(),
          ElevatedButton(
              onPressed: () => Get.toNamed(AppLinks.USER_LOGIN),
              child: const Text(AppLinks.USER_LOGIN)),
        ],
      ),
    );
  }
}
