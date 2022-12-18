import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:pet_doctor/atom/buttons/MoreButton.dart';
import 'package:pet_doctor/atom/buttons/PopupMenuButton.dart';
import 'package:pet_doctor/atom/widgets/ReviewWidget.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_doctor/page/Home/Home.dart';
import 'package:pet_doctor/state/bottomNavigationBar.dart';

class CommunityHomePage extends StatefulWidget {
  const CommunityHomePage({super.key});

  @override
  State<CommunityHomePage> createState() => _CommunityHomePageState();
}

class _CommunityHomePageState extends State<CommunityHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          Get.put(BottomNavigationBarController()).publicNavigationBar(),
      appBar: AppBar(
        title: Container(
          width: 200.r,
          height: 50,
          decoration: BoxDecoration(
              color: ColorConstants.backgroundColorLight,
              borderRadius:
                  BorderRadius.circular(BorderConstants.borderRadius)),
          child: TextField(),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
      ),
      body: Column(
        children: [
          Categorys(
            buttons: [
              ElevatedButton(onPressed: () {}, child: const Text('병원')),
              ElevatedButton(onPressed: () {}, child: const Text('약국')),
              ElevatedButton(onPressed: () {}, child: const Text('인기')),
              ElevatedButton(onPressed: () {}, child: const Text('자유')),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: PaddingConstants.mainHorizontal),
            child: Pet_PopupMenuButton(),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                if (index < 9) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: PaddingConstants.mainHorizontal,
                        vertical: PaddingConstants.subVertical),
                    child: Pet_ReviewWidget(),
                  );
                } else {
                  return MoreButton();
                }
              },
              itemCount: 10 + 1,
            ),
          )
        ],
      ),
    );
  }
}
