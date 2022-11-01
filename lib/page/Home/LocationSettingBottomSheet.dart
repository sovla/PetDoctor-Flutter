import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_doctor/constants/color.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class LocationSettingBottomSheet extends StatelessWidget {
  const LocationSettingBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 620.r, minHeight: 620.r),
      child: DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Container(
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
