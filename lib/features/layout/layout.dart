import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:movis_app/features/layout/logic/layout_cubit.dart';
import 'package:get_it/get_it.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    // Provide LayoutCubit using GetIt
    return BlocProvider(
      create: (_) => GetIt.I<LayoutCubit>(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          final cubit = context.read<LayoutCubit>();
          return Scaffold(
            body: cubit.pages[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[800],
              showUnselectedLabels: true,
              enableFeedback: false,
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              onTap: (value) => cubit.changePage(value),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.play),
                  label: "Coming",
                ),
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.search),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.download),
                  label: "Downloads",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: "Menu",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
