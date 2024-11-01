import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get connect => 'Connect';

  @override
  String get energyConsumed => 'Energy Consumed';

  @override
  String get bill => 'Bill';

  @override
  String get disconnect => 'Disconnect';

  @override
  String get languageSelect => 'Select Language';

  @override
  String get noteToConnect =>
      'Please click on \'Connect\' to automatically connect to the Stromleser Wi-Fi network';
}
