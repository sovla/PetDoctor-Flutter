//  Library ----------------------------
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

//  Constants ----------------------------
import 'package:pet_doctor/constants/color.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/routes/links.dart';

//  Widgets ----------------------------
import 'package:pet_doctor/page/Community/Community_Home.dart';
import 'package:pet_doctor/atom/buttons/PopupMenuButton.dart';

class Pet_FacilityWidget extends StatelessWidget {
  const Pet_FacilityWidget({
    Key? key,
    required this.name,
    required this.category,
    required this.openDays,
    required this.distint,
    required this.address,
  }) : super(key: key);

  final String name;
  final String category;
  final String openDays;
  final double distint;
  final String address;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppLinks.HOSPITAL_DETAIL);
      },
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: PaddingConstants.spaceButton,
              children: [
                Text(name),
                Text(category),
              ],
            ),
            Wrap(
              spacing: PaddingConstants.spaceButton,
              children: [
                const Text("영업 여부"),
                Text(openDays),
              ],
            ),
            Wrap(
              spacing: PaddingConstants.spaceButton,
              children: [
                Text("$distint km"),
                Text(address),
              ],
            ),
            Wrap(
              spacing: PaddingConstants.spaceButton,
              children: [
                IconButton(
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Icon(Icons.phone)),
                IconButton(
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Icon(Icons.phone)),
                IconButton(
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Icon(Icons.phone))
              ],
            ),
          ],
        )
      ]),
    );
  }
}
