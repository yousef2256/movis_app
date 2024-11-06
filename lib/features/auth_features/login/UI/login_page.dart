import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/helpers/app_regex.dart';
import 'package:movis_app/core/helpers/navegations.dart';
import 'package:movis_app/core/helpers/spaser.dart';
import 'package:movis_app/core/routes/routes.dart';
import 'package:movis_app/core/widgets/custome_text_button.dart';
import 'package:movis_app/features/auth_features/login/UI/widgets/custome_app_bar.dart';
import 'package:movis_app/core/widgets/custome_button.dart';
import 'package:movis_app/core/widgets/custome_text_feald.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: const CustomeAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Center(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                    //password field
                    CustomeTextFeald(
                      hintText: "Enter your password",
                      textInputType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !AppRegex.isPassword(value)) {
                          return "Please enter a valid password";
                        }
                        return null;
                      },
                      suffixIcon: TextButton(
                        onPressed: () {},
                        child: const Text("Show",
                            style: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    verticalSpace(14.h),
                    //login button
                    CustomeButton(
                      text: "Login",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.pushNamedAndRemoveUntil(Routes.homePage,
                              predicate: (route) => false);
                        }
                      },
                    ),
                    verticalSpace(20.h),
                    Text("OR",
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey)),
                    verticalSpace(20.h),
                    //use a sign in code button
                    CustomeButton(
                      text: "Use a sign in code",
                      onPressed: () {},
                      color: Theme.of(context).colorScheme.secondary,
                      textColor: Colors.white,
                    ),
                    verticalSpace(20.h),
                    //forgot password button
                    CustomTextButton(
                      text: "Forgot password?",
                      onPressed: () {
                        context.pushNamed(Routes.forgotPassword);
                      },
                    ),
                    verticalSpace(30.h),
                    Text(
                        textAlign: TextAlign.center,
                        "Sign in is protected by Google reCAPTCHA to\n ensure your not bot. Learn more",
                        style: TextStyle(color: Colors.grey, fontSize: 12.sp)),
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
