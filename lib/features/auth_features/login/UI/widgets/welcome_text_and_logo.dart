import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spaser.dart';
import '../../../../../core/theme/text_styls/texts_styles.dart';
import '../../../../../core/utils/constens/images.dart';

class WelcomeTextAndLogo extends StatelessWidget {
  const WelcomeTextAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // welcome text
        Text(
          "W e l c o m e   IN",
          style: TextStyles.welcomeTextStyle,
        ),
        verticalSpace(10.h),
        //logo
        Image.asset(ImagePath.logoImage, height: 60.h),
        verticalSpace(30.h),
      ],
    );
  }
}
