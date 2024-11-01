import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_picker/language_picker.dart';
import 'package:language_picker/languages.dart';
import 'package:stromleser/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stromleser/main.dart';
import 'package:stromleser/screens/home_screen/bloc/language_bloc.dart';
import 'package:stromleser/utils/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _buildDialogItem(Language language) {
      return Row(
        children: <Widget>[
          const SizedBox(
            width: 8.0,
          ),
          Text("${language.name} (${language.isoCode})"),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Color.fromRGBO(70, 68, 68, 0.6),
        title: AvifImage.asset(
          "assets/logo.avif",
          width: 180.w,
        ),
        //  PoppinText.getHeading("Stromleser", FontWeight.w600, 21.sp),
        elevation: 0,
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => Theme(
                      data: Theme.of(context).copyWith(
                          primaryColor: Colors.black.withOpacity(0.8)),
                      child: LanguagePickerDialog(
                          titlePadding: const EdgeInsets.all(8.0),
                          searchCursorColor: Colors.black87,
                          languages: [
                            Languages.english,
                            Languages.dutch,
                            Languages.hindi
                          ],
                          searchInputDecoration:
                              const InputDecoration(hintText: 'Search...'),
                          isSearchable: true,
                          title: Text(
                              AppLocalizations.of(context)!.languageSelect),
                          onValuePicked: (Language language) {
                            log(language.isoCode);
                            log(language.nativeName);
                            log(language.name);
                            context.read<LanguageBloc>().add(
                                ChangeLanguageEvent(
                                    locale: Locale(language.isoCode)));
                          },
                          itemBuilder: _buildDialogItem)),
                );
              },
              icon: Icon(
                Icons.translate,
                color: Colors.white,
                size: 24.sp,
                weight: 400,
              )),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      backgroundColor: Color.fromRGBO(70, 68, 68, 0.6),
      body: Column(
        children: [
          PoppinText.getHeading(
              AppLocalizations.of(context)!.bill, FontWeight.w600, 21.sp),
        ],
      ),
    );
  }
}
