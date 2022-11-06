import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';

class Pet_ImageAddButton extends StatelessWidget {
  Pet_ImageAddButton({super.key, this.onTap});
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 60.r,
        height: 60.r,
        decoration: BoxDecoration(
            border: Border.all(
              color: ColorConstants.borderGrayColor,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(BorderConstants.buttonRadius)),
        child: const Center(child: Icon(Icons.add)),
      ),
    );
  }
}
