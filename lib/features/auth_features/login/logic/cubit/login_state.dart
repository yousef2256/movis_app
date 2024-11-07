part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class ShowPassword extends LoginState {}

final class HidePassword extends LoginState {}

