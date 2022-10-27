import 'package:flutter/material.dart';

class HambergerButton extends StatelessWidget {
  final double width;
  final double height;
  final Function()? onPressed;
  final Color? color;

  const HambergerButton({
    super.key,
    this.width = 20.0,
    this.height = 20.0,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: onPressed,
          color: color,
        ));
  }
}
