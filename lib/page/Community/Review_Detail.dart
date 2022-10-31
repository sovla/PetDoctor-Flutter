import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_doctor/constants/color.dart';
import 'package:pet_doctor/page/Community/Community_Home.dart';

class ReviewDetailPage extends StatefulWidget {
  const ReviewDetailPage({super.key});

  @override
  State<ReviewDetailPage> createState() => _ReviewDetailPageState();
}

class _ReviewDetailPageState extends State<ReviewDetailPage> {
  CarouselController _pageController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("이전 페이지로"),
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
                    const Text("제목 블라블랍라발발제목 블라블랍라발발제목 블라블랍라발발제목 블라블랍라발발"),
                    const Text("제목 블라블랍라발발제목 블라블랍라발발제목 블라블랍라발발제목 블라블랍라발발"),
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
              ].map((e) => ReplyComponent()).toList()),
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
              IconButton(onPressed: (() {}), icon: Icon(Icons.camera)),
              Pet_TextFormField(),
              TextButton(onPressed: (() {}), child: Text("등록"))
            ],
          ),
        ),
      ),
    );
  }
}

class Pet_TextFormField extends StatelessWidget {
  const Pet_TextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 230.r,
        height: 40.r,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(BorderConstants.borderRadius),
            color: ColorConstants.backgroundColorLight,
            border:
                Border.all(width: 1, color: ColorConstants.borderGrayColor)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: PaddingConstants.buttonHorizontal),
          child: Center(child: TextField()),
        ));
  }
}

class ReplyComponent extends StatelessWidget {
  const ReplyComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: ColorConstants.borderGrayColor)),
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minHeight: 100.r, minWidth: double.infinity),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: PaddingConstants.mainHorizontal,
              vertical: PaddingConstants.buttonVertical),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    spacing: PaddingConstants.spaceButton,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text('닉네임'),
                      Text('닉네임'),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_alt_outlined))
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                ],
              ),
              Text("내욧ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅁㅇㄴㅁㅇㅁㄴㅇㅎㅁㄴㅇㅁㄴ허ㅗㅇ허몬오ㅓㅁㄴㅎ오ㅓㅎㅁ노ㅓㅇ")
            ],
          ),
        ),
      ),
    );
  }
}

class Swiper extends StatelessWidget {
  final CarouselController controller;
  final List<String>? imageList;

  const Swiper({Key? key, required this.controller, this.imageList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: controller,
      options: CarouselOptions(
        height: 200.r,
        viewportFraction: 1,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              child: Container(
                margin: const EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset("assets/images/dummy.jpg",
                            fit: BoxFit.cover, width: 320.r),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              'No. ${i} image',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
