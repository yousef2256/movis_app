import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:movis_app/features/coming_soon/coming_soon.dart';
import 'package:movis_app/features/download/download_screen.dart';
import 'package:movis_app/features/home_features/UI/home_screen.dart';
import 'package:movis_app/features/menu/menu_screen.dart';
import 'package:movis_app/features/search/search_screen.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);

  List<Widget> pages = [
    const HomeScreen(),
    const ComingSoonScreen(),
    const SearchScreen(),
    const DownloadsScreen(),
    const MenuScreen(),
  ];
  int currentIndex = 0;
  void buttomNavigatinBarIndexChanged(int index) {
    currentIndex = index;
    emit(ButtomNavigatinBarIndexChanged(index: index));
  }
}
