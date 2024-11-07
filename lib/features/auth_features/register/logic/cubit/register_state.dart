part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class ShowPassword extends RegisterState {}

final class HidePassword extends RegisterState {}
