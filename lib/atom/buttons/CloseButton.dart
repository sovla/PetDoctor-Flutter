import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'CloseButton', type: CloseButton)
class CloseButton extends StatelessWidget {
  final double width;
  final double height;
  final Function()? onPressed;
  final Color? color;

  const CloseButton({
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
          icon: Icon(Icons.close),
          onPressed: onPressed,
          color: color,
        ));
  }
}
