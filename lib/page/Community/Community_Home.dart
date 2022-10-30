import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet_doctor/routes/routes.dart';

class CommunityHomePage extends StatefulWidget {
  const CommunityHomePage({super.key});

  @override
  State<CommunityHomePage> createState() => _CommunityHomePageState();
}

class _CommunityHomePageState extends State<CommunityHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('CommunityHomePage'),
          ...AppRoutes.communityRoutes
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
