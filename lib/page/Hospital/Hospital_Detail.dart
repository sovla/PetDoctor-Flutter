import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';
import 'package:pet_doctor/state/bottomNavigationBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../routes/links.dart';

class HospitalDetailPage extends StatefulWidget {
  const HospitalDetailPage({super.key});

  @override
  State<HospitalDetailPage> createState() => _HospitalDetailPageState();
}

class _HospitalDetailPageState extends State<HospitalDetailPage> {
  var title = "만족오향족발 시청점";
  var category = "병원";
  var rating = 3.74;
  var reviewCount = 324;
  var blogReviewCount = 114;
  var address = "서울 중구 서수문로 134-7";
  var openStatus = "오픈중"; // ["","오픈중","영업종료"];
  var openDays = "월 10:20 - 22:00";
  var tel = "010-1234-1234";
  var homepage = "https://naver.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/dummy.jpg",
            fit: BoxFit.cover,
            width: 360.r,
            height: 200.r,
          ),
          Wrap(
            spacing: PaddingConstants.spaceButton,
            children: [
              Text(title),
              Text(category),
            ],
          ),
          Wrap(
            spacing: PaddingConstants.spaceButton,
            children: [
              Text.rich(TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  size: 14.r,
                  Icons.star,
                  color: ColorConstants.iconRateColor,
                )),
                TextSpan(text: "$rating"),
                TextSpan(text: "/5")
              ])),
              Text("리뷰 ${reviewCount}"),
              Text("블로그 리뷰 ${blogReviewCount}"),
            ],
          )
        ],
      ),
      bottomNavigationBar:
          Get.put(BottomNavigationBarController()).publicNavigationBar(),
    );
  }
}
