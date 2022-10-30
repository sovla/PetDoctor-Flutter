import 'package:flutter/material.dart';

class AppNoticePage extends StatefulWidget {
  const AppNoticePage({super.key});

  @override
  State<AppNoticePage> createState() => _AppNoticePageState();
}

class _AppNoticePageState extends State<AppNoticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [const Text('AppNoticePage')],
      ),
    );
  }
}
