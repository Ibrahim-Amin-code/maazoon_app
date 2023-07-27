import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/router/router.dart';
import '../../../../core/widgets/space_widget.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

import '../edit_profile/edit_profile.dart';

class UserProfileBody extends StatefulWidget {
  const UserProfileBody({Key? key}) : super(key: key);

  @override
  State<UserProfileBody> createState() => _UserProfileBodyState();
}

class _UserProfileBodyState extends State<UserProfileBody> {
  // @override
  // void initState() {
  //   GetIt.I<AuthCubit>().getProfile();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container();
    // SingleChildScrollView(
    //   child: BlocConsumer<AuthCubit, AuthState>(
    //     bloc: GetIt.I<AuthCubit>(),
    //     listener: (context, state) {},
    //     builder: (context, state) {
    //       return
    //        Column(
    //         children: [
    //           ConditionalBuilder(
    //             condition: GetIt.I<AuthCubit>().getProfileModel != null,
    //             builder: (context) => Column(
    //               children: [
    //                 SizedBox(
    //                   height: h * 0.3,
    //                   child: CircleAvatar(
    //                     radius: w * 0.22,
    //                     backgroundColor: Colors.white,
    //                     child: CircleAvatar(
    //                       radius: w * 0.2,
    //                       backgroundColor: Colors.white,
    //                       backgroundImage: NetworkImage((GetIt.I<AuthCubit>()
    //                                   .getProfileModel!
    //                                   .image !=
    //                               '')
    //                           ? GetIt.I<AuthCubit>().getProfileModel!.image!
    //                           : "https://static.vecteezy.com/system/resources/previews/008/442/086/original/illustration-of-human-icon-user-symbol-icon-modern-design-on-blank-background-free-vector.jpg"),
    //                     ),
    //                   ),
    //                 ),
    //                 Text(
    //                   GetIt.I<AuthCubit>().getProfileModel!.name!,
    //                   style: headingStyle.copyWith(
    //                       fontSize: 18,
    //                       color: mal3abColor,
    //                       fontWeight: FontWeight.w600),
    //                 ),
    //                 const VerticalSpace(value: 2),
    //               ],
    //             ),
    //             fallback: (context) => Padding(
    //               padding: EdgeInsets.only(top: h * 0.2),
    //               child: loading(mal3abColor),
    //             ),
    //           ),
    //           Padding(
    //             padding: EdgeInsets.symmetric(
    //                 horizontal: screenWidth(context) * 0.04,
    //                 vertical: screenHeight(context) * 0.04),
    //             child: Column(
    //               children: [
    //                 // BlocConsumer<ReservationCubit, ReservationState>(
    //                 //   bloc: GetIt.I<ReservationCubit>(),
    //                 //   listener: (context, state) {
    //                 //     // if (state is AllChallengeSuccessState) {
    //                 //     //    }
    //                 //   },
    //                 //   builder: (context, state) {
    //                 //     return ProfileItem(
    //                 //       onTap: () {
    //                 //         GetIt.I<ReservationCubit>().allChallenges();

    //                 //         navigateTo(
    //                 //             page: const EstablishedScreen(
    //                 //               index: 1,
    //                 //             ),
    //                 //             context: context);
    //                 //       },
    //                 //       text: 'My Challenges',
    //                 //     );
    //                 //   },
    //                 // ),
    //                 const VerticalSpace(value: 2),
    //                 BlocConsumer<ReservationCubit, ReservationState>(
    //                   bloc: GetIt.I<ReservationCubit>(),
    //                   listener: (context, state) {},
    //                   builder: (context, state) {
    //                     return (state is! AllReservationLoadingState)
    //                         ? ProfileItem(
    //                             onTap: () {
    //                               GetIt.I<ReservationCubit>().allReservations();
    //                               navigateTo(
    //                                   page: const EstablishedScreen(
    //                                       // index: 0,
    //                                       ),
    //                                   context: context);
    //                             },
    //                             text: 'Reservations',
    //                           )
    //                         : loading(mal3abColor);
    //                   },
    //                 ),
    //                 const VerticalSpace(value: 2),

    //                 BlocConsumer<ReservationCubit, ReservationState>(
    //                   bloc: GetIt.I<ReservationCubit>(),
    //                   listener: (context, state) {},
    //                   builder: (context, state) {
    //                     return (state is! MyRequestsLoadingState)
    //                         ? ProfileItem(
    //                             onTap: () {
    //                               GetIt.I<ReservationCubit>().myRequests();
    //                               navigateTo(
    //                                   page: const MyRequestsScreen(),
    //                                   context: context);
    //                             },
    //                             text: 'My Requests',
    //                           )
    //                         : loading(mal3abColor);
    //                   },
    //                 ),
    //                 const VerticalSpace(value: 2),
    //                 ProfileItem(
    //                     onTap: () {
    //                       GetIt.I<AuthCubit>().getProfile();

    //                       navigateTo(
    //                           page: const EditProfileScreen(),
    //                           context: context);
    //                     },
    //                     text: 'Edit Profile'),
    //                 const VerticalSpace(value: 2),
    //                 (state is! LogOutLoadingState)
    //                     ? ProfileItem(
    //                         onTap: () {
    //                           GetIt.I<AuthCubit>().postLogout();
    //                         },
    //                         text: 'Logout')
    //                     : loading(mal3abColor),
    //                 const VerticalSpace(value: 2),
    //                 (state is! DeleteAccountLoadingState)
    //                     ? ProfileItem(
    //                         onTap: () {
    //                           GetIt.I<AuthCubit>().postDeleteAccount();
    //                         },
    //                         text: 'Delete Account')
    //                     : loading(mal3abColor),
    //               ],
    //             ),
    //           ),
    //         ],
    //       );
    //     },
    //   ),
    // );
  }
}
