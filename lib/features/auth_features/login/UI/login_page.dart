import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/helpers/navegations.dart';
import 'package:movis_app/core/helpers/spaser.dart';
import 'package:movis_app/core/routes/routes.dart';
import 'package:movis_app/core/theme/app/color_conestents.dart';
import 'package:movis_app/core/theme/text_styls/texts_styles.dart';
import 'package:movis_app/core/widgets/custome_text_button.dart';
import 'package:movis_app/core/widgets/custome_app_bar.dart';
import 'package:movis_app/core/widgets/custome_button.dart';
import 'package:movis_app/features/auth_features/login/UI/widgets/email_and_password_fealds.dart';
import 'package:movis_app/features/auth_features/login/UI/widgets/welcome_text_and_logo.dart';
import 'package:movis_app/features/auth_features/login/logic/login_cubit.dart';

class LoginPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is success) {
          context.pushNamedAndRemoveUntil(Routes.layout,
              predicate: (Route<dynamic> route) => false);
        } else if (state is filyer) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.massage, style: TextStyles.buttonTextStyle),
              backgroundColor: AppColors.primaryColor,
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: CustomeAppBar(scrollController: _scrollController),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //WELCOME TEXT
                      const WelcomeTextAndLogo(),

                      //  email and password fields
                      const EmailAndPasswordFealds(),

                      //login button
                      CustomeButton(
                        text: state is Loading ? "Loading ...." : 'Login',
                        onPressed: () {
                          context.read<LoginCubit>().firbaseLoginLogic();
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
                          Text("Don't have an account?",
                              style: TextStyles.bodyGreyTextStyle),
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
