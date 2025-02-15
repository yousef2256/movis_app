import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spaser.dart';
import '../../../../../core/helpers/validators.dart';
import '../../../../../core/widgets/custome_text_feald.dart';
import '../../logic/login_cubit.dart';

class EmailAndPasswordFealds extends StatelessWidget {
  const EmailAndPasswordFealds({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Column(
          children: [
            //email field
            CustomeTextFeald(
              controller: context.read<LoginCubit>().emailController,
              hintText: "Enter your email",
              textInputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: Validators.emailValidator,
            ),
            verticalSpace(14.h),

            //password field
            CustomeTextFeald(
              controller: context.read<LoginCubit>().passwordController,
              hintText: "Enter your password",
              textInputType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              obscureText: context.read<LoginCubit>().showPassword,
              validator: Validators.passwordValidator,
              textButton:
                  context.read<LoginCubit>().showPassword ? "Show" : "Hide",
              suffixOnPressed: () {
                context.read<LoginCubit>().showPasswordLogic();
              },
            ),
            verticalSpace(14.h),
          ],
        );
      },
    );
  }
}
