import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:stromleser/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stromleser/utils/text_style.dart';

class ConnectWifi extends StatelessWidget {
  const ConnectWifi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Lottie.asset(
          "assets/wifi.json",
          height: 400.h,
          fit: BoxFit.cover,
        )),
        InkWell(
          onTap: () {
            AppSettings.openAppSettings(type: AppSettingsType.wifi);
          },
          child: Container(
            color: Colors.black12,
            padding: EdgeInsets.all(12.r),
            child: PoppinText.getHeading(
                AppLocalizations.of(context)!.connect, FontWeight.w600, 21.sp),
          ),
        ),
        SizedBox(
          height: 80.h,
        ),
        Padding(
          padding: EdgeInsets.all(18.r),
          child: PoppinText.getHeading(
              AppLocalizations.of(context)!.noteToConnect,
              FontWeight.w400,
              12.sp),
        ),
      ],
    );
  }
}
