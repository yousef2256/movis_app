import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movis_app/core/di/dependenvy_injection.dart';
import 'package:movis_app/core/helpers/cash_helper.dart';
import 'package:movis_app/features/auth_features/login/api/login_api_conestents.dart';
import 'package:movis_app/features/auth_features/login/api/login_firebase_error_handler.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial());

  // show password logic
  bool showPassword = true;
  void showPasswordLogic() {
    showPassword = !showPassword;
    emit(LoginState.showPassword(showPassword));
  }

  // Login Controlers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // cash helper
  final cacheHelper = getIt<CacheHelper>();

  // Firebase login logic
  Future<void> firbaseLoginLogic() async {
    emit(const LoginState.loading());
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      emit(const LoginState.success());
    } on FirebaseAuthException catch (e) {
      final errorMessage = FirebaseErrorHandler.handleFirebaseAuthError(e.code);
      emit(LoginState.filyer(errorMessage));
    } catch (e) {
      emit(const LoginState.filyer(FirebaseErrorMessages.unknownError));
    }
  }

  // close controllers
  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
