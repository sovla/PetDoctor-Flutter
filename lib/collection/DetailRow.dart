//  Library ----------------------------
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//  Constants ----------------------------
import 'package:pet_doctor/constants/color.dart';

class Pet_DetailRow extends StatelessWidget {
  const Pet_DetailRow(
      {super.key,
      required this.icon,
      required this.textSpans,
      this.isBorderBottom = true});
  final IconData icon;
  final List<TextSpan> textSpans;
  final bool isBorderBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.r,
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(color: ColorConstants.borderGrayColor, width: 0.5),
        left: BorderSide(color: ColorConstants.borderGrayColor, width: 0.5),
        right: BorderSide(color: ColorConstants.borderGrayColor, width: 0.5),
        bottom: isBorderBottom
            ? BorderSide(color: ColorConstants.borderGrayColor, width: 0.5)
            : BorderSide.none,
      )),
      child: Row(
        children: [
          SizedBox(
              width: 40.r,
              child: Icon(
                icon,
                size: 24.r,
              )),
          Text.rich(TextSpan(children: textSpans))
        ],
      ),
    );
  }
}
