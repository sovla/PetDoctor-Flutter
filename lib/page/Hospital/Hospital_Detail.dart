import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../routes/links.dart';

class HospitalDetailPage extends StatefulWidget {
  const HospitalDetailPage({super.key});

  @override
  State<HospitalDetailPage> createState() => _HospitalDetailPageState();
}

class _HospitalDetailPageState extends State<HospitalDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('HospitalDetailPage'),
          TextButton(
              onPressed: () {
                Get.toNamed(AppLinks.HOSPITAL_REVIEW);
              },
              child: const Text('${AppLinks.HOSPITAL_REVIEW}')),
        ],
      ),
    );
  }
}
