part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  // show password state
  const factory LoginState.showPassword(bool showPassword) = ShowPassword;

  // login loading state
  const factory LoginState.loading() = Loading;
  const factory LoginState.success() = success;
  const factory LoginState.filyer(String massage) = filyer;
}
