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

class Swiper extends StatelessWidget {
  final CarouselController controller;
  final List<String>? imageList;

  const Swiper({Key? key, required this.controller, this.imageList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> tempImageList = imageList ?? [1, 2, 3, 4, 5];
    return CarouselSlider(
      carouselController: controller,
      options: CarouselOptions(
        height: 200.r,
        viewportFraction: imageList?.length.ceilToDouble() ?? 5,
      ),
      items: tempImageList.map((i) {
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
