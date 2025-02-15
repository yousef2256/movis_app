import 'dart:ui';
import 'package:flutter/material.dart';

class CustomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final ScrollController scrollController;
  final Widget? leading;

  const CustomeAppBar(
      {super.key, required this.scrollController, this.leading});

  @override
  _CustomeAppBarState createState() => _CustomeAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomeAppBarState extends State<CustomeAppBar> {
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
              filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
              child: Container(
                color:
                    Colors.black.withOpacity(0.2), // Semi-transparent overlay
              ),
            ),
          ),
        AppBar(
          leading: widget.leading ??
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ],
    );
  }
}
