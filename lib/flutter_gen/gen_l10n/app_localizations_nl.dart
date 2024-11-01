import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get connect => 'verbinden';

  @override
  String get energyConsumed => 'verbruikte energie';

  @override
  String get bill => 'rekening';

  @override
  String get disconnect => 'loskoppelen';

  @override
  String get languageSelect => 'taal selecteren';

  @override
  String get noteToConnect =>
      'Klik op \'Verbinden\' om automatisch verbinding te maken met het Stromleser Wi-Fi-netwerk';
}
