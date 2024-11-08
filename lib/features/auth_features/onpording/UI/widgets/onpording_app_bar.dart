import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/helpers/navegations.dart';
import 'package:movis_app/core/helpers/spaser.dart';
import 'package:movis_app/core/routes/routes.dart';

class OnpordingAppBar extends StatelessWidget {
  const OnpordingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          Image.asset("assets/images/logo.png", height: 32.h),

          Row(
            children: [
              //privacy & helpe menu
              DropdownButton<String>(
                dropdownColor: Theme.of(context).colorScheme.secondary,
                underline: const SizedBox(),
                icon: const Icon(Icons.more_vert),
                iconSize: 24,
                value: null,
                items: const [
                  DropdownMenuItem(value: "privacy", child: Text("Privacy")),
                  DropdownMenuItem(value: "help", child: Text("Help")),
                ],
                onChanged: (value) {},
              ),
              horizontalSpace(12.w),

              //sign in button
              GestureDetector(
                onTap: () {
                  context.pushNamed(Routes.loginPage);
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(5.r)),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
