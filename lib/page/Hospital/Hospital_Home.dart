// Library ---------------
import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pet_doctor/atom/buttons/PopupMenuButton.dart';
import 'package:pet_doctor/atom/widgets/FacilityWidget.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';
import 'package:pet_doctor/page/Community/Community_Home.dart';
// Widgets ---------------

import 'package:pet_doctor/page/Home/Home.dart';
import 'package:pet_doctor/routes/links.dart';

import '../../state/bottomNavigationBar.dart';

class HospitalHomePage extends StatefulWidget {
  const HospitalHomePage({super.key});

  @override
  State<HospitalHomePage> createState() => _HospitalHomePageState();
}

class _HospitalHomePageState extends State<HospitalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Pet_MapListView(),
        bottomNavigationBar:
            Get.find<BottomNavigationBarController>().publicNavigationBar());
  }
}

class Pet_MapListView extends StatefulWidget {
  const Pet_MapListView({
    Key? key,
  }) : super(key: key);

  @override
  State<Pet_MapListView> createState() => _Pet_MapListViewState();
}

class _Pet_MapListViewState extends State<Pet_MapListView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  late List<Marker> _markers;
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _markers = [];
    _addMarker('key1');
    _addMarker('key2');
    _addMarker('key3');
    _addMarker('key4');
    _addMarker('key5');
    _addMarker('key6');
    _addMarker('key7');
    _addMarker('key8');
    _addMarker('key9');
    _addMarker('key10');
  }

  void _addMarker(String key) {
    _markers.add(Marker(
        width: 40,
        height: 40,
        point: LatLng(
            _random.nextDouble() * 10 + 48, _random.nextDouble() * 10 - 6),
        builder: (ctx) => const _ColorMarker(),
        key: ValueKey(key)));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const Pet_AppBar().build(context),
        body: Container(
          child: Stack(
            children: [
              Positioned.fill(
                child: FlutterMap(
                  options: MapOptions(
                    center: LatLng(51.5, -0.09),
                    zoom: 5,
                  ),
                  nonRotatedChildren: [
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          const TextField(),
                          Categorys(
                              buttons: [
                            1,
                            2,
                            3,
                            4,
                            5,
                            5,
                            4,
                            45,
                            5,
                            5,
                          ]
                                  .map((e) => ElevatedButton(
                                      onPressed: () {
                                        showBarModalBottomSheet(
                                            expand: false,
                                            context: context,
                                            barrierColor:
                                                ColorConstants.bottomSheetDart,
                                            backgroundColor:
                                                ColorConstants.bottomSheetDart,
                                            builder: (context) => Container(
                                                  height: 400.r,
                                                  color: ColorConstants
                                                      .backgroundColorWhite,
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Pet_PopupMenuButton(),
                                                        ],
                                                      ),
                                                      Expanded(
                                                        child: ListView.builder(
                                                          shrinkWrap: true,
                                                          itemBuilder:
                                                              (context, index) {
                                                            var name = "약국이름";
                                                            var category = "병원";
                                                            var openDays =
                                                                "월요일 오전 10:00 ~ 오후 04:00";
                                                            var distint = 3.72;
                                                            var address =
                                                                "부산진구 거제대로 60번길 15 메종모시기";
                                                            return Pet_FacilityWidget(
                                                                name: name,
                                                                category:
                                                                    category,
                                                                openDays:
                                                                    openDays,
                                                                distint:
                                                                    distint,
                                                                address:
                                                                    address);
                                                          },
                                                          itemCount: 10,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ));
                                      },
                                      child: Text(e.toString())))
                                  .toList())
                        ],
                      ),
                    )
                  ],
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                    ),
                    MarkerLayer(markers: _markers),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ColorMarker extends StatefulWidget {
  const _ColorMarker({Key? key}) : super(key: key);

  @override
  _ColorMarkerState createState() => _ColorMarkerState();
}

class _ColorMarkerState extends State<_ColorMarker> {
  late final Color color;

  @override
  void initState() {
    super.initState();
    color = _ColorGenerator.getColor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: color);
  }
}

class _ColorGenerator {
  static List<Color> colorOptions = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.indigo,
    Colors.amber,
    Colors.black,
    Colors.white,
    Colors.brown,
    Colors.pink,
    Colors.cyan
  ];

  static final Random _random = Random();

  static Color getColor() {
    return colorOptions[_random.nextInt(colorOptions.length)];
  }
}
