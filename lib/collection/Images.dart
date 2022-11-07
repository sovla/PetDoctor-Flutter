import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';

class Pet_Images extends StatelessWidget {
  const Pet_Images({super.key, required this.images});
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100.r,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var image = images[index];
          return Container(
              width: 100.r,
              height: 100.r,
              child: Image.network(
                image,
                width: 100.r,
                height: 100.r,
              ));
        },
        itemCount: images.length,
      ),
    );
  }
}
