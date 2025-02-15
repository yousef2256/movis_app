import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/helpers/navegations.dart';
import 'package:movis_app/core/helpers/spaser.dart';
import 'package:movis_app/core/theme/text_styls/texts_styles.dart';
import 'package:movis_app/core/utils/constens/images.dart';
import 'package:movis_app/core/widgets/custome_button.dart';
import 'package:movis_app/core/widgets/custome_text_button.dart';
import 'package:movis_app/core/widgets/custome_text_feald.dart';
import 'package:movis_app/core/widgets/custome_app_bar.dart';
import 'package:movis_app/features/auth_features/register/logic/register_cubit.dart';

import '../../../../core/helpers/validators.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/theme/app/color_conestents.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is Success) {
          context.pushNamedAndRemoveUntil(Routes.layout,
              predicate: (Route<dynamic> route) => false);
        } else if (state is Filyer) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message, style: TextStyles.buttonTextStyle),
              backgroundColor: AppColors.primaryColor,
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: CustomeAppBar(
            scrollController: context.read<RegisterCubit>().scrollController,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: SingleChildScrollView(
                  controller: context.read<RegisterCubit>().scrollController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //WELCOME TEXT
                      Text(
                        "W e l c o m e",
                        style: TextStyles.welcomeTextStyle,
                      ),
                      verticalSpace(10.h),
                      //logo
                      Image.asset(ImagePath.logoImage, height: 60.h),
                      verticalSpace(30.h),

                      //email field
                      CustomeTextFeald(
                        controller:
                            context.read<RegisterCubit>().emailController,
                        hintText: "Enter your email",
                        textInputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: Validators.emailValidator,
                      ),
                      verticalSpace(14.h),

                      //password field
                      CustomeTextFeald(
                        controller:
                            context.read<RegisterCubit>().passwordController,
                        hintText: "Enter your password",
                        textInputType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        obscureText: context.read<RegisterCubit>().showPassword,
                        validator: Validators.passwordValidator,
                        textButton: context.read<RegisterCubit>().showPassword
                            ? "Show"
                            : "Hide",
                        suffixOnPressed: () {
                          context.read<RegisterCubit>().showPasswordLogic();
                        },
                      ),
                      verticalSpace(14.h),

                      // confirm password field
                      CustomeTextFeald(
                        controller: context
                            .read<RegisterCubit>()
                            .confirmPasswordController,
                        hintText: "Confirm your password",
                        textInputType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        obscureText:
                            context.read<RegisterCubit>().showConfirmPassword,
                        validator: Validators.passwordValidator,
                        textButton:
                            context.read<RegisterCubit>().showConfirmPassword
                                ? "Show"
                                : "Hide",
                        suffixOnPressed: () {
                          context
                              .read<RegisterCubit>()
                              .showConfirmPasswordLogic();
                        },
                      ),
                      verticalSpace(14.h),

                      //login button
                      CustomeButton(
                        text: "Login",
                        onPressed: () {
                          if (context
                                  .read<RegisterCubit>()
                                  .passwordController
                                  .text ==
                              context
                                  .read<RegisterCubit>()
                                  .confirmPasswordController
                                  .text) {
                            context
                                .read<RegisterCubit>()
                                .registerWithFirebase();
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Passwords do not match',
                                    style: TextStyles.buttonTextStyle),
                                backgroundColor: AppColors.primaryColor,
                              ),
                            );
                          }
                        },
                      ),
                      verticalSpace(14.h),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("I allredy have an account",
                              style: TextStyles.bodyGreyTextStyle),
                          verticalSpace(10.h),
                          CustomTextButton(
                            text: "Login",
                            onPressed: () {
                              context.pop();
                            },
                          ),
                        ],
                      ),
                      verticalSpace(30.h),
                      Text(
                        textAlign: TextAlign.center,
                        "Sign up is protected by Google reCAPTCHA to\n ensure your not bot. Learn more",
                        style: TextStyles.bodyGreyTextStyle,
                      ),
                    ],
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
