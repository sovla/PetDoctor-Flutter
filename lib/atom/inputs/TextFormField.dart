// Library ------------------
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Constants ------------------
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';

class Pet_TextFormField extends StatelessWidget {
  const Pet_TextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 230.r,
        height: 40.r,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(BorderConstants.borderRadius),
            color: ColorConstants.backgroundColorLight,
            border:
                Border.all(width: 1, color: ColorConstants.borderGrayColor)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: PaddingConstants.buttonHorizontal),
          child: const Center(child: TextField()),
        ));
  }
}
