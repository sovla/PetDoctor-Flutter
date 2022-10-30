import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet_doctor/routes/links.dart';

class PharmacyUpdatePage extends StatefulWidget {
  const PharmacyUpdatePage({super.key});

  @override
  State<PharmacyUpdatePage> createState() => _PharmacyUpdatePageState();
}

class _PharmacyUpdatePageState extends State<PharmacyUpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('PharmacyUpdate'),
        ],
      ),
    );
  }
}
