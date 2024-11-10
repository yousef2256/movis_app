import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:movis_app/features/layout/logic/cubit/layout_cubit.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: LayoutCubit.get(context)
              .pages[LayoutCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[800],
            showUnselectedLabels: true,
            enableFeedback: false,
            type: BottomNavigationBarType.fixed, // Prevents movement/shifting
            currentIndex: LayoutCubit.get(context).currentIndex,
            onTap: (value) {
              LayoutCubit.get(context).buttomNavigatinBarIndexChanged(value);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(IconlyLight.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(IconlyLight.play), label: "Coming"),
              BottomNavigationBarItem(
                  icon: Icon(IconlyLight.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(IconlyLight.download), label: "Downloads"),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
            ],
          ),
        );
      },
    );
  }
}
