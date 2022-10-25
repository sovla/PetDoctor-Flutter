import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pet_doctor/themes/dark_theme.dart';
import 'package:pet_doctor/themes/light_theme.dart';
import 'package:widgetbook/widgetbook.dart';

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
          name: 'widgets test',
          folders: [
            WidgetbookFolder(
              name: 'attributes',
              widgets: [
                WidgetbookComponent(
                  name: 'Container',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Short price',
                      builder: (context) => Container(),
                    ),
                    WidgetbookUseCase(
                      name: 'Long price',
                      builder: (context) => Container(),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Container',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Short weight',
                      builder: (context) => Container(
                        width: 320,
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Long weight',
                      builder: (context) => Container(
                        width: 1050,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
          widgets: [
            WidgetbookComponent(
              name: 'Ingredients',
              useCases: [
                WidgetbookUseCase(
                  name: 'Shortl list ',
                  builder: (context) => Container(),
                ),
                WidgetbookUseCase(
                  name: 'Medium list',
                  builder: (context) => Container(),
                ),
                WidgetbookUseCase(
                  name: 'Long list',
                  builder: (context) => Container(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'New tag',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Container(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Rotated image',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Container(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'MealDetail',
              useCases: [
                WidgetbookUseCase(
                  name: 'Short name',
                  builder: (context) => Container(),
                ),
                WidgetbookUseCase(
                  name: 'Long name',
                  builder: (context) => Container(),
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'pages',
          folders: [
            WidgetbookFolder(
              name: 'attributes',
              widgets: [
                WidgetbookComponent(
                  name: 'Container',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Short price',
                      builder: (context) => Container(),
                    ),
                    WidgetbookUseCase(
                      name: 'Long price',
                      builder: (context) => Container(),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Container',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Short weight',
                      builder: (context) => Container(
                        width: 320,
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Long weight',
                      builder: (context) => Container(
                        width: 1050,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
      appInfo: AppInfo(name: 'Meal App'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildStorybook(context);
  }
}
