import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/helpers/spaser.dart';
import 'package:movis_app/features/auth_features/onpording/UI/widgets/onpording_app_bar.dart';

class OnpordingScreen extends StatelessWidget {
  const OnpordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background Image
          Image.asset(
            width: double.infinity,
            fit: BoxFit.cover,
            "assets/images/background.png",
          ),
          //gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(190, 0, 0, 0),
                  Color.fromARGB(204, 0, 0, 0),
                  Color.fromARGB(234, 0, 0, 0),
                  Colors.black,
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //row [logo,privacy & helpe menu , sign in button]
                const OnpordingAppBar(),
                verticalSpace(40.h),
                //text
                Column(
                  children: [
                    Text(
                      "Tap into endless\n entertainment",
                      style: TextStyle(
                        fontSize: 24.sp,
                      ),
                    ),
                    verticalSpace(12.h),
                    Text(
                      textAlign: TextAlign.center,
                      "Stoies to match every mood,\nwith new releases every week.\nCancel anytime.",
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),

                Container(
                  width: double.infinity,
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 35.h),
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Create a Stack Movis account\nand more.\nGo to StackMovis.com/more",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
