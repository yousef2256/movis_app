import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constens/images.dart';

class CustomeHomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final ScrollController scrollController;

  const CustomeHomeAppBar({super.key, required this.scrollController});

  @override
  _CustomeHomeAppBarState createState() => _CustomeHomeAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomeHomeAppBarState extends State<CustomeHomeAppBar> {
  bool isBlurred = false;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_handleScroll);
    super.dispose();
  }

  void _handleScroll() {
    if (widget.scrollController.offset > 50 && !isBlurred) {
      setState(() {
        isBlurred = true;
      });
    } else if (widget.scrollController.offset <= 50 && isBlurred) {
      setState(() {
        isBlurred = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Apply blur effect when `isBlurred` is true
        if (isBlurred)
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                color:
                    Colors.black.withOpacity(0.3), // Semi-transparent overlay
              ),
            ),
          ),
        AppBar(
          leading: Container(
            alignment: Alignment.center,
            child: Image.asset(
              ImagePath.logoImage2,
              height: 25.h,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ],
    );
  }
}
