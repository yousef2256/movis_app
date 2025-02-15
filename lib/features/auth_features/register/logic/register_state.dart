part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;

  // show password
  const factory RegisterState.showPassword(bool showPassword) = ShowPassword;

  // show confirm password
  const factory RegisterState.showConfirmPassword(bool showConfirmPassword) =
      ShowConfirmPassword;

  // register states
  const factory RegisterState.loading() = Loading;
  const factory RegisterState.success() = Success;
  const factory RegisterState.filyer(String message) = Filyer;
}
