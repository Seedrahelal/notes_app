import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit()
      : super(ThemeData(
          brightness: Brightness.light,
          fontFamily: 'Poppins',
        ));

  void toggleTheme() {
    emit(state.brightness == Brightness.dark
        ? ThemeData(brightness: Brightness.light, fontFamily: 'Poppins')
        : ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'));
  }
}
