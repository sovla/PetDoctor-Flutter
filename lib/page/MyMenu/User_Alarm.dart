import 'package:flutter/material.dart';

class UserAlarmPage extends StatefulWidget {
  const UserAlarmPage({super.key});

  @override
  State<UserAlarmPage> createState() => _UserAlarmPageState();
}

class _UserAlarmPageState extends State<UserAlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [const Text('UserAlarmPage')],
      ),
    );
  }
}
