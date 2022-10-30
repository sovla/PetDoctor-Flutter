import 'package:flutter/material.dart';

class UserUpdatePage extends StatefulWidget {
  const UserUpdatePage({super.key});

  @override
  State<UserUpdatePage> createState() => _UserUpdatePageState();
}

class _UserUpdatePageState extends State<UserUpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [const Text('UserUpdatePage')],
      ),
    );
  }
}
