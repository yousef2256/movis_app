import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/helpers/app_regex.dart';
import 'package:movis_app/core/helpers/navegations.dart';
import 'package:movis_app/core/helpers/spaser.dart';
import 'package:movis_app/core/routes/routes.dart';
import 'package:movis_app/core/widgets/custome_button.dart';
import 'package:movis_app/core/widgets/custome_text_button.dart';
import 'package:movis_app/core/widgets/custome_text_feald.dart';
import 'package:movis_app/features/auth_features/login/UI/widgets/custome_app_bar.dart';
import 'package:movis_app/features/auth_features/register/logic/cubit/register_cubit.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is ShowPassword) {
          print("show password");
        } else if (state is HidePassword) {
          print("hide password");
        }
      },
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
                          hintText: "Create a password",
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                          obscureText:
                              context.read<RegisterCubit>().showPassword,
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
                              context.read<RegisterCubit>().togglePassword();
                            },
                            child: Text(
                              context.read<RegisterCubit>().showPassword
                                  ? "Show"
                                  : "Hide",
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        verticalSpace(14.h),
                        CustomeTextFeald(
                          hintText: "Confirm your password",
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          obscureText:
                              context.read<RegisterCubit>().showConfirmPassword,
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
                              context
                                  .read<RegisterCubit>()
                                  .toggleConfirmPassword();
                            },
                            child: Text(
                              context.read<RegisterCubit>().showConfirmPassword
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
                        verticalSpace(14.h),
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
                            Text("I allredy have an account",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.grey)),
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
                        Text(
                          textAlign: TextAlign.center,
                          "Sign up is protected by Google reCAPTCHA to\n ensure your not bot. Learn more",
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
