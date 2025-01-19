import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movis_app/features/coming_soon/coming_soon.dart';
import 'package:movis_app/features/download/download_screen.dart';
import 'package:movis_app/features/home_features/UI/home_screen.dart';
import 'package:movis_app/features/menu/menu_screen.dart';
import 'package:movis_app/features/search/search_screen.dart';

part 'layout_state.dart';
part 'layout_cubit.freezed.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(const LayoutState.initial());

  // pages
  List<Widget> pages = [
    HomeScreen(),
    const ComingSoonScreen(),
    const SearchScreen(),
    const DownloadsScreen(),
    const MenuScreen(),
  ];

  // current index
  int currentIndex = 0;
  void changePage(int index) {
    currentIndex = index;
    emit(LayoutState.currentPage(index));
  }
}
