// ignore_for_file: file_names

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/router/router.dart';
import '../../../../core/widgets/space_widget.dart';
import '../cubit/stadium_cubit.dart';

class AllStadiumsInHome extends StatelessWidget {
  const AllStadiumsInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [],
    );
    // BlocConsumer<StadiumCubit, StadiumState>(
    //   listener: (context, state) {},
    //   bloc: GetIt.I<StadiumCubit>(),
    //   builder: (context, state) {
    //     // return (GetIt.I<StadiumCubit>().getAllStadiumModel != null)
    //     //     ?

    //         // : loading(mal3abColor);
    //   },
    // );
  }
}
