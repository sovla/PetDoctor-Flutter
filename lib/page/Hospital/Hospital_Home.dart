import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet_doctor/routes/links.dart';
import 'package:pet_doctor/routes/routes.dart';

class HospitalHomePage extends StatefulWidget {
  const HospitalHomePage({super.key});

  @override
  State<HospitalHomePage> createState() => _HospitalHomePageState();
}

class _HospitalHomePageState extends State<HospitalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('HospitalHome'),
        TextButton(
            onPressed: () {
              Get.toNamed(AppLinks.HOSPITAL_DETAIL);
            },
            child: const Text('${AppLinks.HOSPITAL_DETAIL}')),
        TextButton(
            onPressed: () {
              Get.toNamed(AppLinks.HOSPITAL_UPDATE);
            },
            child: const Text('${AppLinks.HOSPITAL_UPDATE}')),
      ],
    );
  }
}
