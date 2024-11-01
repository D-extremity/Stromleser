part of 'language_bloc.dart';

@immutable
sealed class LanguageEvent {}

class ChangeLanguageEvent extends LanguageEvent {
  final Locale locale;

  ChangeLanguageEvent({required this.locale});
}
