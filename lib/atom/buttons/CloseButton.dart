import 'package:flutter/material.dart';

class Pet_CloseButton extends StatelessWidget {
  final double width;
  final double height;
  final Function()? onPressed;
  final Color? color;

  const Pet_CloseButton({
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
          icon: const Icon(Icons.close),
          onPressed: onPressed,
          color: color,
        ));
  }
}
