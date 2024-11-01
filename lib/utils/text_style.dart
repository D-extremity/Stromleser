import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PoppinText {
  static Text getHeading(String s, FontWeight weight, double size,
      {Color? color, TextAlign? align, Shadow? shadow}) {
    return Text(
      s,
      textAlign: align,
      style: GoogleFonts.dmSans(
        textStyle: TextStyle(
          color: color ?? Colors.white.withOpacity(0.8),
          fontWeight: weight,
          shadows: [
            shadow ??
                Shadow(
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  color: const Color.fromARGB(8, 0, 0, 0).withOpacity(0.0),
                ),
          ],
          fontSize: size + 2.sp,
        ),
      ),
    );
  }
}
