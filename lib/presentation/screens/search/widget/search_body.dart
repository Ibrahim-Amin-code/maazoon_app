import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/router/router.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/space_widget.dart';
import '../../home/widget/home_page_body.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  bool search = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * 0.03,
          vertical: screenHeight(context) * 0.02),
      child: Column()
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     const VerticalSpace(value: 1.5),
      //     Padding(
      //       padding:
      //           EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.04),
      //       child: CustomTextFormField(
      //         prefix: Icon(
      //           Icons.search,
      //           color: mal3abColor,
      //         ),
      //         onChanged: (value) {
      //           if (value != null && value != '') {
      //             setState(() {
      //               search = true;
      //             });
      //             GetIt.I<StadiumCubit>().searchStadium(name: value);
      //           } else {
      //             setState(() {
      //               search = false;
      //             });
      //           }
      //         },
      //         hint: 'Search',
      //         inputType: TextInputType.text,
      //       ),
      //     ),
      //     const VerticalSpace(value: 1.5),
      //     BlocConsumer<StadiumCubit, StadiumState>(
      //       listener: (context, state) {},
      //       bloc: GetIt.I<StadiumCubit>(),
      //       builder: (context, state) {
      //         return (state is! SearchStadiumLoadingState &&
      //                 GetIt.I<StadiumCubit>().searchStadiumModel != null &&
      //                 search)
      //             ? ListView.separated(
      //                 primary: false,
      //                 shrinkWrap: true,
      //                 itemBuilder: (context, index) => buildStadiumWidget(
      //                     context: context,
      //                     image: GetIt.I<StadiumCubit>()
      //                         .searchStadiumModel!
      //                         .stadiums![index]
      //                         .image!,
      //                     price: GetIt.I<StadiumCubit>()
      //                         .searchStadiumModel!
      //                         .stadiums![index]
      //                         .priceHourly!,
      //                     stadiumName: GetIt.I<StadiumCubit>()
      //                         .searchStadiumModel!
      //                         .stadiums![index]
      //                         .title!,
      //                     rateNum: double.parse(GetIt.I<StadiumCubit>()
      //                         .searchStadiumModel!
      //                         .stadiums![index]
      //                         .rate!
      //                         .toString()),
      //                     stadiumPlace: GetIt.I<StadiumCubit>()
      //                         .searchStadiumModel!
      //                         .stadiums![index]
      //                         .city!,
      //                     onTap: () => GetIt.I<StadiumCubit>()
      //                             .getStadiumDetail(
      //                                 date: '',
      //                                 stadiumId: GetIt.I<StadiumCubit>()
      //                                     .searchStadiumModel!
      //                                     .stadiums![index]
      //                                     .id!,
      //                                 context: context)
      //                             .then((value) {
      //                           navigateTo(
      //                               page: const ReservationScreen(
      //                                 dateApi: null,
      //                                 timeIdApi: null,
      //                                 reservationId: null,
      //                                 index: null,
      //                               ),
      //                               context: context);
      //                         })),
      //                 separatorBuilder: (context, index) =>
      //                     const VerticalSpace(value: 1),
      //                 itemCount: GetIt.I<StadiumCubit>()
      //                     .searchStadiumModel!
      //                     .stadiums!
      //                     .length)
      //             : const SizedBox();
      //       },
      //     )
      //   ],
      // ),
    
    
    );
  }
}
