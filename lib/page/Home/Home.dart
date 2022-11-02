import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';
import 'package:pet_doctor/page/Home/LocationSettingBottomSheet.dart';
import 'package:pet_doctor/routes/links.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_doctor/routes/routes.dart';
import 'package:pet_doctor/state/bottomNavigationBar.dart';

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
          onTap: () async {
            await showBarModalBottomSheet(
              expand: false,
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => const Pet_LocationSetting(),
            );
          },
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
          Categorys(
            title: const Text('실시간 리뷰'),
            buttons: [
              ElevatedButton(onPressed: () {}, child: const Text('병원')),
              ElevatedButton(onPressed: () {}, child: const Text('약국')),
              ElevatedButton(onPressed: () {}, child: const Text('커뮤니티')),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: PaddingConstants.mainHorizontal,
            ),
            child: const ReviewComponent(),
          )
        ],
      ),
      bottomNavigationBar:
          Get.find<BottomNavigationBarController>().publicNavigationBar(),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // 프로젝트에 assets 폴더 생성 후 이미지 2개 넣기
            // pubspec.yaml 파일에 assets 주석에 이미지 추가하기
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                // 현재 계정 이미지 set
                backgroundImage: AssetImage('assets/profile.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                // 다른 계정 이미지[] set
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/profile2.png'),
                ),
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: AssetImage('assets/profile2.png'),
                // )
              ],
              accountName: Text('GANGPRO'),
              accountEmail: Text('gangpro@email.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
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

class Pet_LocationSetting extends StatelessWidget {
  const Pet_LocationSetting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.r,
      color: ColorConstants.backgroundColorWhite,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: PaddingConstants.mainHorizontal,
            vertical: PaddingConstants.subVertical),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('위치설정'),
            Row(
              children: [
                const Text('현재 내 위치로'),
                const Icon(Icons.my_location_sharp)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Pet_WheelPicker(
                  title: '시',
                ),
                const Pet_WheelPicker(
                  title: '군',
                ),
                const Pet_WheelPicker(
                  title: '구',
                ),
              ],
            ),
            SizedBox(
                width: double.infinity,
                height: 40.r,
                child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('확인')))
          ],
        ),
      ),
    );
  }
}

class Pet_WheelPicker extends StatelessWidget {
  const Pet_WheelPicker({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
        ),
        Container(
          width: 100.r,
          height: 300.r,
          decoration: BoxDecoration(
              color: ColorConstants.backgroundColorGray,
              borderRadius: BorderRadius.circular(BorderConstants.borderRadius),
              border:
                  Border.all(color: ColorConstants.borderGrayColor, width: 1)),
          child: CupertinoPicker(
              itemExtent: 100.r,
              looping: true,
              useMagnifier: true,
              onSelectedItemChanged: (index) {},
              selectionOverlay: Container(),
              children: [
                SizedBox(
                    height: 80.r, child: const Center(child: Text('item1'))),
              ]),
        ),
      ],
    );
  }
}

class Categorys extends StatelessWidget {
  final Text? title;
  final List<Widget> buttons;
  const Categorys({Key? key, this.title, required this.buttons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: PaddingConstants.mainHorizontal,
          vertical: PaddingConstants.subVertical),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) title!,
          SizedBox(
            width: double.infinity,
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: PaddingConstants.spaceButton,
                children: buttons,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ReviewComponent extends StatelessWidget {
  const ReviewComponent({
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
