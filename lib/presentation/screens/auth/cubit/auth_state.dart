part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class RegisterLoadingState extends AuthState {}

class RegisterSuccessState extends AuthState {}

class RegisterErrorState extends AuthState {}

class LoginLoadingState extends AuthState {}

class LoginSuccessState extends AuthState {}

class LoginErrorState extends AuthState {}

class LogOutLoadingState extends AuthState {}

class LogOutSuccessState extends AuthState {}

class LogOutErrorState extends AuthState {}

class DeleteAccountLoadingState extends AuthState {}

class DeleteAccountSuccessState extends AuthState {}

class DeleteAccountErrorState extends AuthState {}

class UpdateProfileLoadingState extends AuthState {}

class UpdateProfileSuccessState extends AuthState {}

class UpdateProfileErrorState extends AuthState {}

class GetProfileLoadingState extends AuthState {}

class GetProfileSuccessState extends AuthState {}

class GetProfileErrorState extends AuthState {}
