import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stromleser/utils/text_style.dart';

class UnitWidget extends StatelessWidget {
  final String title;
  final String unit;
  const UnitWidget({
    super.key,
    required this.title,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PoppinText.getHeading(title, FontWeight.w400, 16.sp,
            color: Colors.white.withOpacity(0.6)),
        SizedBox(
          height: 12.h,
        ),
        PoppinText.getHeading(unit, FontWeight.w600, 18.sp,
            color: Colors.white.withOpacity(0.8)),
      ],
    );
  }
}
