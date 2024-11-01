import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stromleser/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stromleser/screens/home_screen/widgets/unit_widget.dart';
import 'package:stromleser/utils/text_style.dart';

class ConnectedStateWidget extends StatelessWidget {
  final String wifiName;
  const ConnectedStateWidget({
    super.key,
    required this.wifiName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        PoppinText.getHeading(wifiName, FontWeight.w400, 18.sp,
            color: Colors.white.withOpacity(0.6)),
        SizedBox(
          height: 20.h,
        ),
        Center(
            child: Image.asset(
          "assets/stromleser.png",
          height: 340.h,
          fit: BoxFit.cover,
        )),
        SizedBox(
          height: 40.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UnitWidget(
                title: AppLocalizations.of(context)!.energyConsumed,
                unit: "45 kWh",
              ),
              SizedBox(
                width: 40.w,
              ),
              PoppinText.getHeading("|", FontWeight.w600, 12.sp,
                  color: Colors.white.withOpacity(0.6)),
              SizedBox(
                width: 80.w,
              ),
              UnitWidget(
                title: AppLocalizations.of(context)!.bill,
                unit: "\$ 26",
              ),
            ],
          ),
        ),
        SizedBox(
          height: 80.h,
        ),
        Center(
          child: Container(
            color: Colors.black12,
            padding: EdgeInsets.all(12.r),
            child: PoppinText.getHeading(
                AppLocalizations.of(context)!.disconnect,
                FontWeight.w600,
                21.sp,
                color: Colors.red),
          ),
        ),
      ],
    );
  }
}
