import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/helpers/app_regex.dart';
import 'package:movis_app/core/helpers/navegations.dart';
import 'package:movis_app/core/helpers/spaser.dart';
import 'package:movis_app/core/routes/routes.dart';
import 'package:movis_app/core/theme/text_styls/texts_styles.dart';
import 'package:movis_app/core/widgets/custome_button.dart';
import 'package:movis_app/core/widgets/custome_text_button.dart';
import 'package:movis_app/core/widgets/custome_text_feald.dart';
import 'package:movis_app/core/widgets/custome_app_bar.dart';

class ForgetPassword extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
   ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: CustomeAppBar(scrollController: _scrollController,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Center(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //WELCOME TEXT
                    Text(
                      "F o r g e t   P a s s w o r d",
                      style: TextStyles.headlineSmall(context),
                    ),
                    verticalSpace(10.h),

                    //logo
                    Image.asset("assets/images/logo.png", height: 60.h),
                    verticalSpace(30.h),

                    //email field
                    CustomeTextFeald(
                      hintText: "Enter your email",
                      textInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !AppRegex.isEmail(value)) {
                          return "Please enter a valid email";
                        }
                        return null;
                      },
                    ),
                    verticalSpace(14.h),
                    //login button
                    CustomeButton(
                      text: "Send code",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.pushNamedAndRemoveUntil(Routes.homePage,
                              predicate: (route) => false);
                        }
                      },
                    ),
                    verticalSpace(20.h),

                    // OR text
                    Text("OR", style: TextStyles.bodyGreyTextStyle),
                    verticalSpace(10.h),

                    //use a sign in code button
                    CustomeButton(
                      text: "Use a sign in code",
                      onPressed: () {},
                      color: Theme.of(context).colorScheme.secondary,
                      textColor: Colors.white,
                    ),
                    verticalSpace(10.h),

                    //I allredy have an account text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("I allredy have an account",
                            style: TextStyles.bodyGreyTextStyle),
                        verticalSpace(10.h),
                        CustomTextButton(
                          text: "Login",
                          onPressed: () {
                            context.pushNamed(Routes.loginPage);
                          },
                        ),
                      ],
                    ),
                    verticalSpace(30.h),

                    //Sign in is protected by Google reCAPTCHA to ensure your not bot. Learn more text
                    Text(
                        textAlign: TextAlign.center,
                        "Sign in is protected by Google reCAPTCHA to\n ensure your not bot. Learn more",
                        style: TextStyles.bodyGreyTextStyle),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
