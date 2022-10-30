import 'package:flutter/material.dart';

class UserBookmarkPage extends StatefulWidget {
  const UserBookmarkPage({super.key});

  @override
  State<UserBookmarkPage> createState() => _UserBookmarkPageState();
}

class _UserBookmarkPageState extends State<UserBookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [const Text('UserBookmarkPage')],
      ),
    );
  }
}
