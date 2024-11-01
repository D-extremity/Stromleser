import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const LanguageInitial()) {
    on<ChangeLanguageEvent>((event, emit) {
      emit(UpdateLanguageState(event.locale));
    });
  }
}
