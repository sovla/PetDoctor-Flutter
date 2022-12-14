import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:pet_doctor/routes/routes.dart';
import 'package:pet_doctor/state/bottomNavigationBar.dart';
import 'package:pet_doctor/themes/dark_theme.dart';
import 'package:pet_doctor/themes/light_theme.dart';
import 'package:pet_doctor/widgetbook/app.widgetbook.dart';

enum runTool { isDev, isWidgetBook, isRelease }

void main() {
  var test = runTool.isDev;

  if (test == runTool.isDev || test == runTool.isRelease) {
    runApp(const MyApp());
  } else if (test == runTool.isWidgetBook) {
    runApp(HotreloadWidgetbook());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 720),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => GetMaterialApp(
              title: 'Pet Doctor',
              theme: getLightThemeData(),
              darkTheme: getDarkThemeData(),
              themeMode: ThemeMode.system,
              // 시스템 테마를 따르는 설정
              debugShowCheckedModeBanner: false,
              // 디버그 배너 끄기
              initialRoute: '/',
              routingCallback: (value) {
                inspect(value);
              },
              getPages: AppRoutes.pages,

              initialBinding: BindingsBuilder(() {
                Get.lazyPut(() => BottomNavigationBarController());
              }),
            ));
  }
}

// TODO 위젯북
// TODO 테스트
// TODO 시각회귀테스트
// TODO 기능테스트


// --- 디자인

// TODO 로그인
// TODO 회원가입
// TODO 메인홈
// TODO 지역선택 모달

// TODO 약국/병원 리스트
// TODO 약국/병원 상세 페이지
// TODO 리뷰 작성 페이지
// TODO 약국/병원 정보 변경 페이지


// TODO 마이홈
// TODO 정보변경 페이지
// TODO 공지/자주/문의


// ---기능
// TODO 로그인
// TODO 회원가입
// TODO 메인홈
// TODO 지역선택 모달

// TODO 리뷰 카테고리 페이지
// TODO 리뷰 상세 페이지

// TODO 약국/병원 리스트
// TODO 약국/병원 상세 페이지
// TODO 리뷰 작성 페이지
// TODO 약국/병원 정보 변경 페이지


// TODO 마이홈
// TODO 정보변경 페이지
// TODO 공지/자주/문의