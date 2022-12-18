import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_doctor/constants/color.dart';

class Pet_Tabs extends StatelessWidget {
  Pet_Tabs({super.key, required this.menus, required this.tabController});
  final List<String> menus;
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.r,
      child: TabBar(
        controller: tabController,
        labelColor: ColorConstants.lightFontColor,
        tabs: menus
            .map((e) => Tab(
                  text: e,
                ))
            .toList(),
      ),
    );
  }
}
