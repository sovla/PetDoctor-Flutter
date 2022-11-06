import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet_doctor/routes/routes.dart';

class MyMenuHomePage extends StatelessWidget {
  const MyMenuHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            title: Text('내 정보 변경'),
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
            title: Text('설정'),
            onTap: () {
              print('Setting is clicked');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.bookmark,
              color: Colors.grey[850],
            ),
            title: Text('북마크'),
            onTap: () {
              print('Q&A is clicked');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_none,
              color: Colors.grey[850],
            ),
            title: Text('알림'),
            onTap: () {
              print('Q&A is clicked');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.check_sharp,
              color: Colors.grey[850],
            ),
            title: Text('공지사항'),
            onTap: () {
              print('Q&A is clicked');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.question_mark,
              color: Colors.grey[850],
            ),
            title: Text('자주묻는질문'),
            onTap: () {
              print('Q&A is clicked');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.library_books_outlined,
              color: Colors.grey[850],
            ),
            title: Text('운영정책'),
            onTap: () {
              print('Q&A is clicked');
            },
            trailing: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
