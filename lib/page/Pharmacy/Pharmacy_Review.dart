import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet_doctor/routes/links.dart';

class PharmacyReviewPage extends StatefulWidget {
  const PharmacyReviewPage({super.key});

  @override
  State<PharmacyReviewPage> createState() => _PharmacyReviewPageState();
}

class _PharmacyReviewPageState extends State<PharmacyReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('PharmacyReview'),
        ],
      ),
    );
  }
}
