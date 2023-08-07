// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/router/router.dart';
import 'package:maazoon_app/presentation/screens/mazzoon/mazzoon_details/mazzoon_details.dart';
import 'package:maazoon_app/presentation/screens/search/search_screen.dart';
import '../../../../core/widgets/space_widget.dart';
import 'home_widgets.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: SizedBox(
        height: screenHeight(context),
        child: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpace(value: 11),
              BuildSearchWidget(
                onTap: () => MagicRouter.navigateTo(const SearchScreen()),
              ),
              const VerticalSpace(value: 2.5),
              const BuildRecommendCard(),
              const VerticalSpace(value: 2.5),
              Text(
                'أعلي تقييما',
                style: headingStyle.copyWith(
                    color: const Color(0xff101010),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              const VerticalSpace(value: 2),
              SheikhMazzoonCard(
                  onTap: () =>
                      MagicRouter.navigateTo(const MazzoonDetailsScreen())),
              const VerticalSpace(value: 2.8),
              const AddsWeddingPlace(),
              const VerticalSpace(value: 2),
              Text(
                'مأذون مقترح ',
                style: headingStyle.copyWith(
                    color: const Color(0xff101010),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              const VerticalSpace(value: 1.5),
              SizedBox(
                height: screenHeight(context) * 0.19,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const SuggestMazzoon(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: screenWidth(context) * 0.04,
                        ),
                    itemCount: 5),
              ),
              const VerticalSpace(value: 1.5),
            ],
          ),
        ),
      ),
    );
  }
}
