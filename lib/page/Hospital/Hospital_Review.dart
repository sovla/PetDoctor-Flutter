import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet_doctor/routes/links.dart';

class HospitalReviewPage extends StatefulWidget {
  const HospitalReviewPage({super.key});

  @override
  State<HospitalReviewPage> createState() => _HospitalReviewPageState();
}

class _HospitalReviewPageState extends State<HospitalReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [const Text('HospitalReview')],
      ),
    );
  }
}
