import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';

class Pet_Tabs extends StatelessWidget {
  const Pet_Tabs({super.key, required this.menus});
  final List<String> menus;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: menus
            .map((e) => Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: ColorConstants.borderGrayColor, width: 0.5)),
                    child: Tab(
                      text: e,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
