import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet_doctor/routes/links.dart';

class PharmacyHomePage extends StatefulWidget {
  const PharmacyHomePage({super.key});

  @override
  State<PharmacyHomePage> createState() => _PharmacyHomePageState();
}

class _PharmacyHomePageState extends State<PharmacyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('PharmacyHome'),
          ElevatedButton(
              onPressed: () => Get.toNamed(AppLinks.PHARMACY_DETAIL),
              child: const Text('PharmacyDetail')),
          ElevatedButton(
              onPressed: () => Get.toNamed(AppLinks.PHARMACY_UPDATE),
              child: const Text('PharmacyUpdate'))
        ],
      ),
    );
  }
}
