import 'package:flutter/material.dart';

class ReviewDetailPage extends StatefulWidget {
  const ReviewDetailPage({super.key});

  @override
  State<ReviewDetailPage> createState() => _ReviewDetailPageState();
}

class _ReviewDetailPageState extends State<ReviewDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('ReviewDetailPage'),
        ],
      ),
    );
  }
}
