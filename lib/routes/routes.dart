import 'package:get/get.dart';
import 'package:pet_doctor/page/Community/Community_Home.dart';
import 'package:pet_doctor/page/Community/Review_Detail.dart';
import 'package:pet_doctor/page/Community/Review_Write.dart';
import 'package:pet_doctor/page/Home/Home.dart';
import 'package:pet_doctor/page/Hospital/Hospital_Detail.dart';
import 'package:pet_doctor/page/Hospital/Hospital_Home.dart';
import 'package:pet_doctor/page/Hospital/Hospital_Review.dart';
import 'package:pet_doctor/page/Hospital/Hospital_Update.dart';
import 'package:pet_doctor/page/Login/User_Id_Find.dart';
import 'package:pet_doctor/page/Login/User_Login.dart';
import 'package:pet_doctor/page/Login/User_Pw_Find.dart';
import 'package:pet_doctor/page/Login/User_SignUp.dart';
import 'package:pet_doctor/page/MyMenu/App_FAQ.dart';
import 'package:pet_doctor/page/MyMenu/App_Notice.dart';
import 'package:pet_doctor/page/MyMenu/App_OperationPolicy.dart';
import 'package:pet_doctor/page/MyMenu/Mymenu_Home.dart';
import 'package:pet_doctor/page/MyMenu/User_Alarm.dart';
import 'package:pet_doctor/page/MyMenu/User_Bookmark.dart';
import 'package:pet_doctor/page/MyMenu/User_Setting.dart';
import 'package:pet_doctor/page/MyMenu/User_Update.dart';
import 'package:pet_doctor/page/Pharmacy/Pharmacy_Detail.dart';
import 'package:pet_doctor/page/Pharmacy/Pharmacy_Home.dart';
import 'package:pet_doctor/page/Pharmacy/Pharmacy_Review.dart';
import 'package:pet_doctor/page/Pharmacy/Pharmacy_Update.dart';

import 'links.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: AppLinks.HOME,
      page: () => const HomePage(),
      middlewares: [],
    ),
    ...mainRoutes,
    ...hospitalRoutes,
    ...pharmacyRoutes,
    ...myMenuRoutes,
    ...communityRoutes,
    ...userRoutes,
    GetPage(
      name: AppLinks.ADMIN,
      page: () => const HomePage(),
      middlewares: [
        // Allow only admins to get through
      ],
    )
  ];

  static final List<GetPage<dynamic>> mainRoutes = [
    GetPage(
      name: AppLinks.HOSPITAL_HOME,
      page: () => const HospitalHomePage(),
    ),
    GetPage(
      name: AppLinks.PHARMACY_HOME,
      page: () => const PharmacyHomePage(),
    ),
    GetPage(
      name: AppLinks.COMMUNITY_HOME,
      page: () => const CommunityHomePage(),
    ),
    GetPage(
      name: AppLinks.MYMENU_HOME,
      page: () => const MyMenuHomePage(),
    ),
  ];

  static final List<GetPage<dynamic>> hospitalRoutes = [
    GetPage(
        name: AppLinks.HOSPITAL_DETAIL, page: () => const HospitalDetailPage()),
    GetPage(
        name: AppLinks.HOSPITAL_REVIEW, page: () => const HospitalReviewPage()),
    GetPage(
        name: AppLinks.HOSPITAL_UPDATE, page: () => const HospitalUpdatePage())
  ];

  static final List<GetPage<dynamic>> pharmacyRoutes = [
    GetPage(
        name: AppLinks.PHARMACY_DETAIL, page: () => const PharmacyDetailPage()),
    GetPage(
        name: AppLinks.PHARMACY_REVIEW, page: () => const PharmacyReviewPage()),
    GetPage(
        name: AppLinks.PHARMACY_UPDATE, page: () => const PharmacyUpdatePage())
  ];

  static final List<GetPage<dynamic>> myMenuRoutes = [
    GetPage(name: AppLinks.APP_FAQ, page: () => const AppFAQPage()),
    GetPage(name: AppLinks.APP_NOTICE, page: () => const AppNoticePage()),
    GetPage(
        name: AppLinks.APP_OPERATIONPOLICY,
        page: () => const AppOperationPolicyPage()),
    GetPage(name: AppLinks.USER_ALARM, page: () => const UserAlarmPage()),
    GetPage(name: AppLinks.USER_BOOKMARK, page: () => const UserBookmarkPage()),
    GetPage(name: AppLinks.USER_SETTING, page: () => const UserSettingPage()),
    GetPage(name: AppLinks.USER_UPDATE, page: () => const UserUpdatePage())
  ];

  static final List<GetPage<dynamic>> communityRoutes = [
    GetPage(name: AppLinks.REVIEW_WRITE, page: () => const ReviewWritePage()),
    GetPage(name: AppLinks.REVIEW_DETAIL, page: () => const ReviewDetailPage())
  ];
  static final List<GetPage<dynamic>> userRoutes = [
    GetPage(name: AppLinks.USER_ID_FIND, page: () => const UserIdFindPage()),
    GetPage(name: AppLinks.USER_PW_FIND, page: () => const UserPwFindPage()),
    GetPage(name: AppLinks.USER_LOGIN, page: () => const UserLoginPage()),
    GetPage(name: AppLinks.USER_SINGUP, page: () => const UserSignUpPage())
  ];
}
