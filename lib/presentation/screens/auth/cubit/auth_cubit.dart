import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
// import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  // postRegister({
  //   required String name,
  //   required String phone,
  //   required String email,
  //   required dynamic image,
  //   required String password,
  //   required String city,
  //   required String place,
  //   required List<Color> colors,
  // }) async {
  //   emit(RegisterLoadingState());
  //   await RegisterActions(
  //           phone: phone,
  //           email: email,
  //           name: name,
  //           image: image,
  //           password: password,
  //           city: city,
  //           place: place,
  //           colors: colors)
  //       .run()
  //       .then((value) => value.fold((l) {
  //             showToast(msg: l.message, state: ToastStates.ERROR);
  //             emit(RegisterErrorState());
  //           }, (r) {
  //             showToast(
  //                 msg: 'Register Successflly', state: ToastStates.SUCCESS);
  //             prefs.setString('token', r!.accessToken!);

  //             emit(RegisterSuccessState());

  //             MagicRouter.navigateTo(const CodeScreen(
  //               isfromregister: true,
  //             ));
  //           }));
  // }

  // postLogin({
  //   required String phone,
  //   required String password,
  // }) async {
  //   emit(LoginLoadingState());
  //   await LoginActions(
  //     phone: phone,
  //     password: password,
  //   ).run().then((value) => value.fold((l) {
  //         showToast(msg: l.message, state: ToastStates.ERROR);
  //         emit(LoginErrorState());
  //       }, (r) {
  //         showToast(msg: 'Login Successflly', state: ToastStates.SUCCESS);
  //         prefs.setString('token', r!.accessToken!);
  //         getProfile();
  //         emit(LoginSuccessState());
  //         MagicRouter.navigateAndPopAll(const LayoutScreen(
  //           index: 0,
  //         ));
  //         // MagicRouter.navigateTo(const LoginScreen());
  //       }));
  // }

  // GetProfileModel? getProfileModel;

  // getProfile() async {
  //   emit(GetProfileLoadingState());
  //   await GetProfileActions().run().then((value) => value.fold((l) {
  //         showToast(msg: l.message, state: ToastStates.ERROR);
  //         emit(GetProfileErrorState());
  //       }, (r) {
  //         getProfileModel = r;
  //         emit(GetProfileSuccessState());
  //       }));
  // }

  // postUpdateProfile({
  //   required String name,
  //   required String phone,
  //   required String email,
  //   required dynamic image,
  //   required String password,
  //   required String city,
  //   required String place,
  // }) async {
  //   emit(UpdateProfileLoadingState());
  //   await UpdateProfileActions(
  //           phone: phone,
  //           email: email,
  //           name: name,
  //           image: image,
  //           password: password,
  //           city: city,
  //           place: place)
  //       .run()
  //       .then((value) => value.fold((l) {
  //             showToast(msg: l.message, state: ToastStates.ERROR);
  //             emit(UpdateProfileErrorState());
  //           }, (r) {
  //             showToast(
  //                 msg: 'Profile Updated Successflly',
  //                 state: ToastStates.SUCCESS);
  //             getProfile();

  //             emit(UpdateProfileSuccessState());

  //             // prefs.setString('token', r!.);
  //             // MagicRouter.navigateTo(const LayoutScreen(
  //             //   index: 0,
  //             // ));
  //           }));
  // }

  // postLogout() async {
  //   emit(LogOutLoadingState());
  //   await LogoutActions().run().then((value) => value.fold((l) {
  //         showToast(msg: l.message, state: ToastStates.ERROR);
  //         emit(LogOutErrorState());
  //       }, (r) {
  //         showToast(msg: 'LogOut Successflly', state: ToastStates.SUCCESS);
  //         prefs.clear();
  //         emit(LogOutSuccessState());
  //         MagicRouter.navigateAndPopAll(const SplashScreen());
  //         // MagicRouter.navigateTo(const LoginScreen());
  //       }));
  // }

  // postDeleteAccount() async {
  //   emit(DeleteAccountLoadingState());
  //   await DeleteAccountActions().run().then((value) => value.fold((l) {
  //         showToast(msg: l.message, state: ToastStates.ERROR);
  //         emit(DeleteAccountErrorState());
  //       }, (r) {
  //         showToast(
  //             msg: 'Delete Account Successflly', state: ToastStates.SUCCESS);
  //         prefs.clear();
  //         emit(DeleteAccountSuccessState());
  //         MagicRouter.navigateAndPopAll(const SplashScreen());
  //         // MagicRouter.navigateTo(const LoginScreen());
  //       }));
  // }


}
