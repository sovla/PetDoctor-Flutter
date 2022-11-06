import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';

class Pet_WriteButton extends StatelessWidget {
  Pet_WriteButton({super.key, this.onTap});

  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 50.r,
        height: 50.r,
        decoration: BoxDecoration(
            color: ColorConstants.backgroundColorBlue,
            borderRadius: BorderRadius.circular(1000.r)),
        child: Icon(
          Icons.add,
          size: 25.r,
          color: ColorConstants.backgroundColorWhite,
        ),
      ),
    );
  }
}
