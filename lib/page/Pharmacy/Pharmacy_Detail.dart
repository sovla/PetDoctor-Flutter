import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet_doctor/routes/links.dart';

class PharmacyDetailPage extends StatefulWidget {
  const PharmacyDetailPage({super.key});

  @override
  State<PharmacyDetailPage> createState() => _PharmacyDetailPageState();
}

class _PharmacyDetailPageState extends State<PharmacyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('PharmacyDetail'),
          ElevatedButton(
              onPressed: () => Get.toNamed(AppLinks.PHARMACY_REVIEW),
              child: const Text('PharmacyReview')),
        ],
      ),
    );
  }
}
