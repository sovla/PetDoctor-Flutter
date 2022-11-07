import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_doctor/atom/buttons/HamburgerButton.dart';
import 'package:pet_doctor/atom/buttons/ImageAddButton.dart';
import 'package:pet_doctor/atom/buttons/MoreButton.dart';
import 'package:pet_doctor/atom/buttons/PetIconButton.dart';
import 'package:pet_doctor/atom/buttons/PopupMenuButton.dart';
import 'package:pet_doctor/atom/buttons/WriteButton.dart';
import 'package:pet_doctor/atom/inputs/TextFormField.dart';
import 'package:pet_doctor/atom/widgets/FacilityWidget.dart';
import 'package:pet_doctor/atom/widgets/ReplyWidget.dart';
import 'package:pet_doctor/atom/widgets/ReviewWidget.dart';
import 'package:pet_doctor/atom/widgets/Swiper.dart';
import 'package:pet_doctor/collection/DetailRow.dart';
import 'package:pet_doctor/collection/Tabs.dart';
import 'package:pet_doctor/page/Community/Community_Home.dart';
import 'package:pet_doctor/page/Community/Review_Detail.dart';
import 'package:pet_doctor/page/Home/Home.dart';
import 'package:pet_doctor/page/Hospital/Hospital_Home.dart';

import 'package:pet_doctor/themes/dark_theme.dart';
import 'package:pet_doctor/themes/light_theme.dart';
import 'package:pet_doctor/widgetbook/app.dart';
import 'package:widgetbook/widgetbook.dart';
import '../atom/buttons/CloseButton.dart';
import 'package:carousel_slider/carousel_slider.dart';

/// 위젯 설계 원칙
/// 1. 재사용성 생각하기
/// 2. 파라미터가 5개 이상 넘을경우 분리 생각해보기

void main() {
  runApp(const HotreloadWidgetbook());
}

class HotreloadWidgetbook extends StatelessWidget {
  const HotreloadWidgetbook({Key? key}) : super(key: key);

  Widget buildStorybook(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 720),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => SafeArea(
              child: Widgetbook.material(
                devices: [
                  Apple.iPhone12ProMax,
                  Apple.iPhone13Mini,
                  Apple.iPhone11ProMax,
                  Apple.iPhone11,
                ],
                themes: [
                  WidgetbookTheme(
                    data: getLightThemeData(),
                    name: 'Light',
                  ),
                  WidgetbookTheme(name: 'Dark', data: getDarkThemeData())
                ],
                textScaleFactors: [
                  1,
                  2,
                ],
                categories: [
                  WidgetbookCategory(
                    name: 'Atom',
                    isExpanded: true,
                    widgets: [
                      WidgetbookComponent(
                        isExpanded: true,
                        name: 'Inputs',
                        useCases: [
                          WidgetbookUseCase(
                            name: 'Pet_TextFormField',
                            builder: (context) => Pet_TextFormField(),
                          ),
                          WidgetbookUseCase(
                            name: 'PetTextInput',
                            builder: (context) => Container(),
                          ),
                          WidgetbookUseCase(
                            name: 'TitleInput',
                            builder: (context) => Container(),
                          ),
                          WidgetbookUseCase(
                            name: 'RoleInput',
                            builder: (context) => Container(),
                          ),
                        ],
                      ),
                      WidgetbookComponent(
                        isExpanded: true,
                        name: 'Widgets',
                        useCases: [
                          WidgetbookUseCase(
                            name: 'Pet_ReplyWidget',
                            builder: (context) => Pet_ReplyWidget(),
                          ),
                          WidgetbookUseCase(
                            name: 'Pet_FacilityWidget',
                            builder: (context) => const Pet_FacilityWidget(
                                address: 'asdasdsad',
                                category: '병원',
                                distint: 3.72,
                                name: '우향장육병원',
                                openDays: '월요일 10:00 - 20:00'),
                          ),
                          WidgetbookUseCase(
                            name: 'HospitalDetailRowWidget',
                            builder: (context) => Container(),
                          ),
                          WidgetbookUseCase(
                            name: 'Pet_ReviewComponent',
                            builder: (context) => const Pet_ReviewWidget(),
                          ),
                          WidgetbookUseCase(
                            name: 'ImageWidget',
                            builder: (context) => Container(),
                          ),
                          WidgetbookUseCase(
                            name: 'Pet_Swiper',
                            builder: (context) => Swiper(
                              controller: CarouselController(),
                              imageList: ["123", "123"],
                            ),
                          ),
                        ],
                      ),
                      WidgetbookComponent(
                        isExpanded: true,
                        name: 'Buttons',
                        useCases: [
                          WidgetbookUseCase(
                            name: 'Pet_CloseButton',
                            builder: (context) => const Pet_CloseButton(),
                          ),
                          WidgetbookUseCase(
                            name: 'Pet_PopupMenuButton',
                            builder: (context) => Pet_PopupMenuButton(),
                          ),
                          WidgetbookUseCase(
                            name: 'Pet_HambergerButton',
                            builder: (context) => const Pet_HambergerButton(),
                          ),
                          WidgetbookUseCase(
                            name: 'Pet_IconButton',
                            builder: (context) => Pet_IconButton(
                              innerIcon: const Icon(
                                  Icons.account_balance_wallet_outlined),
                              innerText: const Text('ABC텍스트'),
                              onTap: () {},
                            ),
                          ),
                          WidgetbookUseCase(
                            name: 'PublicButton',
                            builder: (context) => Container(),
                          ),
                          WidgetbookUseCase(
                            name: 'Pet_ImageAddButton',
                            builder: (context) => Pet_ImageAddButton(),
                          ),
                          WidgetbookUseCase(
                            name: 'Pet_WriteButton',
                            builder: (context) => Pet_WriteButton(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  WidgetbookCategory(name: 'Block', isExpanded: true, widgets: [
                    WidgetbookComponent(
                      isExpanded: true,
                      name: 'Collections',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Pet_DetailRow',
                          builder: (context) => Pet_DetailRow(
                            icon: Icons.abc,
                            textSpans: [
                              TextSpan(text: "영업일"),
                            ],
                          ),
                        ),
                        WidgetbookUseCase(
                          name: 'Pet_Tabs',
                          builder: (context) =>
                              Pet_Tabs(menus: ["asd", 'asd', 'asd']),
                        ),
                        WidgetbookUseCase(
                          name: 'HamburgerButton',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'IconButton',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'PublicButton',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'ImageAddButton',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'WriteButton',
                          builder: (context) => Container(),
                        ),
                      ],
                    ),
                  ]),
                  WidgetbookCategory(name: 'pages', widgets: [
                    WidgetbookComponent(
                      name: 'Community',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Home',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'ReviewDetail',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'ReviewWrite',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'ReviewReport',
                          builder: (context) => Container(),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'Hospital/Pharmacy',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Home',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'Filtering',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'Review-Write',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'Change-Information',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'Detail-Information',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'Detail-Reviews',
                          builder: (context) => Container(),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'Home/Login/Modal',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Home',
                          builder: (context) => const HomePage(),
                        ),
                        WidgetbookUseCase(
                          name: 'LocationSetting-Modal',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'Login-Modal',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'SignUp-Modal',
                          builder: (context) => Container(),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'MyMenu',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'User-Information-Update',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'Bookmarks',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'Setting',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'Alarm',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'Notice',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'FAQ',
                          builder: (context) => Container(),
                        ),
                        WidgetbookUseCase(
                          name: 'Operation-Policy',
                          builder: (context) => Container(),
                        ),
                      ],
                    ),
                  ]),
                ],
                appInfo: AppInfo(
                  name: 'Pet Doctor',
                ),
                deviceFrameBuilder: frameBuilder,
                localizationBuilder: localizationBuilder,
                scaffoldBuilder: scaffoldBuilder,
                themeBuilder: themeBuilder(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return buildStorybook(context);
  }
}
