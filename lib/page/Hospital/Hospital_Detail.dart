import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_doctor/atom/buttons/PetIconButton.dart';
import 'package:pet_doctor/collection/DetailRow.dart';
import 'package:pet_doctor/collection/Tabs.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';
import 'package:pet_doctor/page/Community/Review_Detail.dart';
import 'package:pet_doctor/state/bottomNavigationBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../routes/links.dart';

class HospitalDetailPage extends StatefulWidget {
  const HospitalDetailPage({super.key});

  @override
  State<HospitalDetailPage> createState() => _HospitalDetailPageState();
}

class _HospitalDetailPageState extends State<HospitalDetailPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  late TabController reviewTabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    reviewTabController = TabController(length: 3, vsync: this);
    reviewTabController.addListener(() {
      setState(() {});
    });
  }

  var title = '만족오향족발 시청점';
  var category = '병원';
  var rating = 3.74;
  var reviewCount = 324;
  var blogReviewCount = 114;
  var address = '서울 중구 서수문로 134-7';
  var openStatus = '오픈중'; // ["","오픈중","영업종료"];
  var openDays = '월 10:20 - 22:00';
  var tel = '010-1234-1234';
  var homepage = 'https://naver.com';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dummy.jpg',
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
                  TextSpan(text: '$rating'),
                  const TextSpan(text: '/5')
                ])),
                Text('리뷰 $reviewCount'),
                Text('블로그 리뷰 $blogReviewCount'),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: ColorConstants.borderGrayColor, width: 0.5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Pet_IconButton(
                      innerIcon: const Icon(Icons.call),
                      innerText: const Text('전화')),
                  Pet_IconButton(
                      innerIcon: const Icon(Icons.bookmark),
                      innerText: const Text('북마크 저장')),
                  Pet_IconButton(
                      innerIcon: const Icon(Icons.share),
                      innerText: const Text('공유'))
                ],
              ),
            ),
            Pet_Tabs(
              menus: ['정보', '리뷰'],
              tabController: tabController,
            ),
            if (tabController.index == 0)
              Column(
                children: [
                  Pet_DetailRow(
                      icon: Icons.location_on,
                      textSpans: [TextSpan(text: address)]),
                  Pet_DetailRow(icon: Icons.access_time_rounded, textSpans: [
                    TextSpan(text: openStatus),
                    TextSpan(text: openDays)
                  ]),
                  Pet_DetailRow(
                      icon: Icons.phone, textSpans: [TextSpan(text: tel)]),
                  Pet_DetailRow(icon: Icons.home_outlined, textSpans: [
                    TextSpan(text: homepage),
                  ])
                ],
              ),
            if (tabController.index == 1)
              Column(
                children: [
                  Pet_Tabs(
                      menus: ["앱리뷰", "네이버리뷰", "블로그리뷰"],
                      tabController: reviewTabController)
                ],
              )
          ],
        ),
      ),
      bottomNavigationBar:
          Get.put(BottomNavigationBarController()).publicNavigationBar(),
    );
  }
}
