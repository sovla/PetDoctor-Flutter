import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_doctor/atom/buttons/PopupMenuButton.dart';
import 'package:pet_doctor/atom/inputs/TextFormField.dart';
import 'package:pet_doctor/atom/widgets/ReplyWidget.dart';
import 'package:pet_doctor/atom/widgets/Swiper.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';

class ReviewDetailPage extends StatefulWidget {
  const ReviewDetailPage({super.key});

  @override
  State<ReviewDetailPage> createState() => _ReviewDetailPageState();
}

class _ReviewDetailPageState extends State<ReviewDetailPage> {
  final CarouselController _pageController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('이전 페이지로'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: PaddingConstants.mainHorizontal,
                  vertical: PaddingConstants.subVertical),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                          SizedBox(
                            width: PaddingConstants.spaceButton,
                          ),
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
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: PaddingConstants.mainHorizontal,
                    vertical: PaddingConstants.subVertical),
                child: Column(
                  children: [
                    const Text('제목 블라블랍라발발제목 블라블랍라발발제목 블라블랍라발발제목 블라블랍라발발'),
                    const Text('제목 블라블랍라발발제목 블라블랍라발발제목 블라블랍라발발제목 블라블랍라발발'),
                    SizedBox(
                      width: 320.r,
                      height: 200.r,
                      child: Swiper(
                        controller: _pageController,
                      ),
                    )
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: ColorConstants.borderGrayColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(Icons.thumb_up_alt_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.comment),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.ios_share_outlined),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: PaddingConstants.mainHorizontal,
                  vertical: PaddingConstants.subVertical),
              child: Pet_PopupMenuButton(),
            ),
            Expanded(
              child: ListView(
                  children: [
                1,
                2,
                3,
                4,
                5,
                6,
                1,
                2,
                3,
              ].map((e) => const Pet_ReplyWidget()).toList()),
            )
          ],
        ),
        bottomSheet: Container(
          width: double.infinity,
          height: 50,
          color: ColorConstants.backgroundColorGray,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (() {}), icon: const Icon(Icons.camera)),
              const Pet_TextFormField(),
              TextButton(onPressed: (() {}), child: const Text('등록'))
            ],
          ),
        ),
      ),
    );
  }
}
