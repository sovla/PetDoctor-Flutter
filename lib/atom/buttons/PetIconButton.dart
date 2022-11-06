import 'package:flutter/material.dart';
import 'package:pet_doctor/constants/border.dart';

class Pet_IconButton extends StatelessWidget {
  Pet_IconButton(
      {super.key,
      this.onTap,
      required this.innerIcon,
      required this.innerText});
  final void Function()? onTap;
  final Icon innerIcon;
  final Text innerText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            innerIcon,
            SizedBox(
              height: PaddingConstants.spaceButton,
            ),
            innerText,
          ],
        ),
      ),
    );
  }
}
