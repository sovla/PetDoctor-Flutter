import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_doctor/page/Home/Home.dart';

import 'package:pet_doctor/themes/dark_theme.dart';
import 'package:pet_doctor/themes/light_theme.dart';
import 'package:pet_doctor/widgetbook/app.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as An;
import '../atom/buttons/CloseButton.dart';

/// 위젯 설계 원칙
/// 1. 재사용성 생각하기
/// 2. 파라미터가 5개 이상 넘을경우 분리 생각해보기

void main() {
  runApp(const HotreloadWidgetbook());
}

class HotreloadWidgetbook extends StatelessWidget {
  const HotreloadWidgetbook({Key? key}) : super(key: key);

  Widget buildStorybook(BuildContext context) {
    return Widgetbook.material(
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
          widgets: [
            WidgetbookComponent(
              name: 'Inputs',
              useCases: [
                WidgetbookUseCase(
                  name: 'PetInput',
                  builder: (context) => Container(),
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
              name: 'Components',
              useCases: [
                WidgetbookUseCase(
                  name: 'ReplyWidget',
                  builder: (context) => Container(),
                ),
                WidgetbookUseCase(
                  name: 'DropdownWidget',
                  builder: (context) => Container(),
                ),
                WidgetbookUseCase(
                  name: 'HospitalWidget',
                  builder: (context) => Container(),
                ),
                WidgetbookUseCase(
                  name: 'HospitalDetailRowWidget',
                  builder: (context) => Container(),
                ),
                WidgetbookUseCase(
                  name: 'ReviewWidget',
                  builder: (context) => Container(),
                ),
                WidgetbookUseCase(
                  name: 'ImageWidget',
                  builder: (context) => Container(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Buttons',
              useCases: [
                WidgetbookUseCase(
                  name: 'CloseButton',
                  builder: (context) => const Pet_CloseButton(),
                ),
                WidgetbookUseCase(
                  name: 'MoreButton',
                  builder: (context) => Container(),
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
          ],
        ),
        WidgetbookCategory(name: 'Block', widgets: [
          WidgetbookComponent(
            name: 'Collections',
            useCases: [
              WidgetbookUseCase(
                name: 'CloseButton',
                builder: (context) => Container(),
              ),
              WidgetbookUseCase(
                name: 'MoreButton',
                builder: (context) => Container(),
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
      appInfo: AppInfo(name: 'Pet Doctor'),
      deviceFrameBuilder: frameBuilder,
      localizationBuilder: localizationBuilder,
      scaffoldBuilder: scaffoldBuilder,
      themeBuilder: themeBuilder(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildStorybook(context);
  }
}
