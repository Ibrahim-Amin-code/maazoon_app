// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:get_it/get_it.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/router/router.dart';
import '../../../../core/widgets/space_widget.dart';
import '../../auth/cubit/auth_cubit.dart';
import '../../search/search_screen.dart';
import '../cubit/stadium_cubit.dart';
import 'all_stadiums_inHome.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    // GetIt.I<AuthCubit>().getProfile();
    // GetIt.I<StadiumCubit>().getBanners();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
             VerticalSpace(value: 1),
            // BlocConsumer<AuthCubit, AuthState>(
            //   bloc: GetIt.I<AuthCubit>(),
            //   listener: (context, state) {},
            //   builder: (context, state) {
            //     return (GetIt.I<AuthCubit>().getProfileModel != null)
            //         ? Row(
            //             children: [
            //               SizedBox(
            //                 height: screenHeight(context) * 0.07,
            //                 child: CircleAvatar(
            //                   radius: screenWidth(context) * 0.1,
            //                   backgroundColor: Colors.white,
            //                   child: CircleAvatar(
            //                     radius: screenWidth(context) * 0.2,
            //                     backgroundColor: Colors.white,
            //                     backgroundImage: NetworkImage((GetIt.I<
            //                                     AuthCubit>()
            //                                 .getProfileModel!
            //                                 .image !=
            //                             '')
            //                         ? GetIt.I<AuthCubit>()
            //                             .getProfileModel!
            //                             .image!
            //                         : "https://static.vecteezy.com/system/resources/previews/008/442/086/original/illustration-of-human-icon-user-symbol-icon-modern-design-on-blank-background-free-vector.jpg"),
            //                   ),
            //                 ),
            //               ),
            //               Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                     GetIt.I<AuthCubit>().getProfileModel!.name!,
            //                     style: headingStyle.copyWith(
            //                         color: mal3abColor,
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.bold),
            //                   ),
            //                   Text(
            //                     'Welcome Back!!',
            //                     style: headingStyle.copyWith(
            //                         color: textColor,
            //                         fontSize: 10,
            //                         fontWeight: FontWeight.w500),
            //                   ),
            //                 ],
            //               ),
            //               SizedBox(
            //                 width: screenWidth(context) * 0.35,
            //               ),
            //               InkWell(
            //                 onTap: () => navigateTo(
            //                     page: const SearchScreen(), context: context),
            //                 child: Icon(
            //                   Icons.search,
            //                   size: 30,
            //                   color: mal3abColor,
            //                 ),
            //               ),
            //             ],
            //           )
            //         : const SizedBox();
            //   },
            // ),
           
            const VerticalSpace(value: 1),

            // BlocConsumer<StadiumCubit, StadiumState>(
            //   bloc: GetIt.I<StadiumCubit>(),
            //   listener: (context, state) {},
            //   builder: (context, state) {
            //     return (GetIt.I<StadiumCubit>().getBannersModel != null)
            //         ? SizedBox(
            //             height: screenHeight(context) * 0.25,
            //             width: double.infinity,
            //             // color: Colors.red,
            //             child: Swiper(
            //               autoplay: true,
            //               loop: false,
            //               scrollDirection: Axis.horizontal,
            //               itemBuilder: (BuildContext context, int index) {
            //                 return customCachedNetworkImage(
            //                     url: GetIt.I<StadiumCubit>()
            //                         .getBannersModel!
            //                         .data![index]
            //                         .image!,
            //                     fit: BoxFit.cover,
            //                     context: context);
            //                 // Image.asset(
            //                 //   "asset/icons/homee.png",
            //                 //   fit: BoxFit.cover,
            //                 // );
            //               },
            //               itemCount: GetIt.I<StadiumCubit>()
            //                   .getBannersModel!
            //                   .data!
            //                   .length,
            //               pagination: const SwiperPagination(),
            //               // control: const SwiperControl(),
            //             ),
            //           )
            //         : const SizedBox();
            //   },
            // ),
            
            // : const SizedBox(),
            const VerticalSpace(value: 2),
             ],
        ));
  }
}

// Widget buildStadiumWidget({
//   required context,
//   required String image,
//   required String price,
//   required String stadiumName,
//   required double? rateNum,
//   required String stadiumPlace,
//   required VoidCallback onTap,
// }) =>
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: double.infinity,
//           height: screenHeight(context) * 0.2,
//           child:
//               // Image.network(image),
//               customCachedNetworkImage(
//                   url: image,
//                   // 'https://mal3aby.dlt-development.net/storage/2/6441164f59d61_football_pitch-wallpaper-1152x720.jpg',
//                   context: context,
//                   fit: BoxFit.fitWidth),
//           decoration: BoxDecoration(
//               color: Colors.white, borderRadius: BorderRadius.circular(10)),
//         ),
//         const VerticalSpace(value: 1), //
//         Text(
//           stadiumName,
//           style: headingStyle.copyWith(
//               fontSize: 15, fontWeight: FontWeight.w600, color: mal3abColor),
//         ),
//         const VerticalSpace(value: 1), //
//         rateStars(
//           rate: true,
//           itemSize: 13,
//           rateNum: rateNum,
//         ),
//         const VerticalSpace(value: 1), //
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Icon(
//               Icons.location_on_outlined,
//               color: eyeColor.withOpacity(0.6),
//               size: 18,
//             ),
//             Text(
//               '  $stadiumPlace',
//               style: headingStyle.copyWith(
//                   color: eyeColor.withOpacity(0.6),
//                   fontSize: 12,
//                   fontWeight: FontWeight.w400),
//             )
//           ],
//         ),
//         const VerticalSpace(value: 1),
//         Divider(
//           color: colorGrey,
//           height: 1,
//           thickness: 0.7,
//         ),
//         const VerticalSpace(value: 1.5), //
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               'Hourly rate',
//               style: headingStyle.copyWith(
//                   color: eyeColor.withOpacity(0.6),
//                   fontSize: 12,
//                   fontWeight: FontWeight.w500),
//             ),
//             const HorizontalSpace(value: 1),
//             Text(
//               '$price L.E',
//               style: headingStyle.copyWith(
//                   color: mal3abColor,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600),
//             ),
//             const Spacer(),
//             CustomGeneralButton(
//               text: 'Booking',
//               onTap: onTap,
//               color: mal3abColor,
//               borderRadius: 5,
//               fontSize: 14,
//               height: 40,
//               textColor: Colors.white,
//               width: screenWidth(context) * 0.45,
//             )
//           ],
//         ),
//         const VerticalSpace(value: 2),
//         Divider(
//           color: divderColor1,
//           height: 1,
//           thickness: 1.5,
//         ),
//         const VerticalSpace(value: 3),
//       ],
//     );
