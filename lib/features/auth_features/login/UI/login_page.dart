import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/helpers/app_regex.dart';
import 'package:movis_app/core/helpers/navegations.dart';
import 'package:movis_app/core/helpers/spaser.dart';
import 'package:movis_app/core/routes/routes.dart';
import 'package:movis_app/core/widgets/custome_text_button.dart';
import 'package:movis_app/features/auth_features/login/UI/widgets/custome_app_bar.dart';
import 'package:movis_app/core/widgets/custome_button.dart';
import 'package:movis_app/core/widgets/custome_text_feald.dart';
import 'package:movis_app/features/auth_features/login/logic/cubit/login_cubit.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
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
                        //WELCOME TEXT
                        Text(
                          "W e l c o m e   IN",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w300),
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
                        //password field
                        CustomeTextFeald(
                          hintText: "Enter your password",
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          obscureText: context.read<LoginCubit>().showPassword,
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !AppRegex.isPassword(value)) {
                              return "Please enter a valid password";
                            }
                            return null;
                          },
                          suffixIcon: TextButton(
                            onPressed: () {
                              context.read<LoginCubit>().togglePassword();
                            },
                            child: Text(
                              context.read<LoginCubit>().showPassword
                                  ? "Show"
                                  : "Hide",
                              style: const TextStyle(color: Colors.grey),
                            ),
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
                        //forgot password button
                        CustomTextButton(
                          text: "Forgot password?",
                          onPressed: () {
                            context.pushNamed(Routes.forgotPassword);
                          },
                        ),
                        verticalSpace(20.h),
                        Text("OR",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.grey)),
                        verticalSpace(10.h),
                        //use a sign in code button
                        CustomeButton(
                          text: "Use a sign in code",
                          onPressed: () {},
                          color: Theme.of(context).colorScheme.secondary,
                          textColor: Colors.white,
                        ),
                        verticalSpace(10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.grey)),
                            verticalSpace(10.h),
                            CustomTextButton(
                              text: "Register Now",
                              onPressed: () {
                                context.pushNamed(Routes.registerPage);
                              },
                            ),
                          ],
                        ),
                        verticalSpace(30.h),
                        Text(
                          textAlign: TextAlign.center,
                          "Sign in is protected by Google reCAPTCHA to\n ensure your not bot. Learn more",
                          style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
