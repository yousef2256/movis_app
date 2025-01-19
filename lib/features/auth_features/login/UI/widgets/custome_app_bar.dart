import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/helpers/navegations.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomeAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 2,
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
      title: Image.asset("assets/images/logo.png", height: 32.h),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Help",
            style: TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
        ),
      ],
    );
  }
}
