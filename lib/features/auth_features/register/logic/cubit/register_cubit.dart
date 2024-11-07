import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  bool _showPassword = false;
  bool get showPassword => _showPassword;
  void togglePassword() {
    _showPassword = !_showPassword;
    emit(_showPassword ? ShowPassword() : HidePassword());
  }

  bool _showConfirmPassword = false;
  bool get showConfirmPassword => _showConfirmPassword;
  void toggleConfirmPassword() {
    _showConfirmPassword = !_showConfirmPassword;
    emit(_showConfirmPassword ? ShowPassword() : HidePassword());
  }
}
