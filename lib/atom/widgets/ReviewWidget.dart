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

class Pet_ReviewWidget extends StatelessWidget {
  const Pet_ReviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(AppLinks.REVIEW_DETAIL),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(PaddingConstants.spaceButton),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50.r,
                        height: 50.r,
                        child: Icon(
                          Icons.ac_unit_outlined,
                          size: 50.r,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text('닉네임'),
                              const Text('글작성시간'),
                            ],
                          ),
                          SizedBox(
                            height: PaddingConstants.subVertical,
                          ),
                          const Text('병원/약국 이름'),
                        ],
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz))
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('제목블라라라라라ㅏ라라라라라라라라라'),
                        const Text(
                            '제목블라라라라라ㅏ라라라라라제목블라라라라라ㅏ라라라라라라라라라제목블라라라라라ㅏ라라라라라라라라라제목블라라라라라ㅏ라라라라라라라라라제목블라라라라라ㅏ라라라라라라라라라라라라라')
                      ],
                    ),
                  ),
                  SizedBox(
                      width: 75.r, height: 75.r, child: const Icon(Icons.abc))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.thumb_up_alt_outlined)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_sharp))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
