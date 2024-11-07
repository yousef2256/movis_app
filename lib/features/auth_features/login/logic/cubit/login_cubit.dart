import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  //show password
  bool _showPassword = false;
  bool get showPassword => _showPassword;
  void togglePassword() {
    _showPassword = !_showPassword;
    emit(_showPassword ? ShowPassword() : HidePassword());
  }
}
