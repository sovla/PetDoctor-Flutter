import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/routes/links.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_doctor/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Row(
            children: [
              const Icon(Icons.location_on_outlined, size: 25.0),
              const SizedBox(
                width: 8,
              ),
              Text(
                '위치 설정',
                style: Get.textTheme.subtitle1,
              ),
            ],
          ),
        ),
        leadingWidth: 112,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('우리 댕냥이에게 안성맞춤\nPetDoctor에게\n안심하고 맡기세요!'),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: PaddingConstants.mainHorizontal,
                vertical: PaddingConstants.subVertical),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(BorderConstants.borderRadius),
                  border: Border.all(width: 1, color: Get.theme.primaryColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Pet_ColumnIconButton(
                      icon: const Icon(Icons.local_hospital_outlined),
                      text: const Text('병원')),
                  Pet_ColumnIconButton(
                      icon: const Icon(Icons.local_pharmacy_outlined),
                      text: const Text('약국')),
                  Pet_ColumnIconButton(
                      icon: const Icon(Icons.window), text: const Text('커뮤니티')),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: PaddingConstants.mainHorizontal,
                vertical: PaddingConstants.subVertical),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        BorderConstants.smallButtonRadius),
                    border:
                        Border.all(width: 1, color: Get.theme.primaryColor)),
                child: const Center(child: Text('내가 최근 본 병원/약국')),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: PaddingConstants.mainHorizontal,
                vertical: PaddingConstants.subVertical),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('실시간 리뷰'),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: PaddingConstants.spaceButton,
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text("병원")),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("약국")),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("커뮤니티")),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: PaddingConstants.mainHorizontal,
            ),
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
                                    Text("닉네임"),
                                    Text("글작성시간"),
                                  ],
                                ),
                                SizedBox(
                                  height: PaddingConstants.subVertical,
                                ),
                                Text("병원/약국 이름"),
                              ],
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_horiz))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("제목블라라라라라ㅏ라라라라라라라라라"),
                              Text(
                                  "제목블라라라라라ㅏ라라라라라제목블라라라라라ㅏ라라라라라라라라라제목블라라라라라ㅏ라라라라라라라라라제목블라라라라라ㅏ라라라라라라라라라제목블라라라라라ㅏ라라라라라라라라라라라라라")
                            ],
                          ),
                        ),
                        SizedBox(
                            width: 75.r, height: 75.r, child: Icon(Icons.abc))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.thumb_up_alt_outlined)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove_red_eye_sharp))
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget Pet_ColumnIconButton({
    required Icon icon,
    required Text text,
  }) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            icon,
            SizedBox(
              height: PaddingConstants.iconVertical,
            ),
            text
          ],
        ),
      ),
    );
  }
}
