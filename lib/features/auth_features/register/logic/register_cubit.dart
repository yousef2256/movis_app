import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/di/dependenvy_injection.dart';
import '../../../../core/helpers/cash_helper.dart';
import '../../login/api/login_api_conestents.dart';
import '../../login/api/login_firebase_error_handler.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterState.initial());

  // controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // scroll controller
  final scrollController = ScrollController();

  // cash helper
  final cacheHelper = getIt<CacheHelper>();

  // show password logic
  bool showPassword = true;
  void showPasswordLogic() {
    showPassword = !showPassword;
    emit(RegisterState.showPassword(showPassword));
  }

  // show confirm password logic
  bool showConfirmPassword = true;
  void showConfirmPasswordLogic() {
    showConfirmPassword = !showConfirmPassword;
    emit(RegisterState.showConfirmPassword(showConfirmPassword));
  }

  // register with firebase logic
  void registerWithFirebase() async {
    emit(const RegisterState.loading());
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      await cacheHelper.saveData(
          key: CacheHelper.userId,
          value: FirebaseAuth.instance.currentUser!.uid);
      emit(const RegisterState.success());
    } on FirebaseAuthException catch (e) {
      final errorMessage = FirebaseErrorHandler.handleFirebaseAuthError(e.code);
      emit(RegisterState.filyer(errorMessage));
    } catch (e) {
      emit(const RegisterState.filyer(FirebaseErrorMessages.unknownError));
    }
  }
}
