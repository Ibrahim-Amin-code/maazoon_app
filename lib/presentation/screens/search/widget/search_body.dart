import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/presentation/screens/search/widget/search_name.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/space_widget.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({super.key, required this.index});
  final int? index;

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  bool search = false;

  TextEditingController? searchController;
  List<String> titles = ['ليستة', 'الخريطة'];
  int currentIndex = 0;

  @override
  void initState() {
    if (widget.index != null) {
      setState(() {
        currentIndex = widget.index!;
      });
    } else {
      setState(() {
        currentIndex = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      width: double.infinity,
      height: screenHeight(context),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpace(value: 2),
            Row(
              children: List.generate(
                  titles.length,
                  (index) => buildOptions(
                        index: index,
                      )),
            ),
            (currentIndex == 0) ? const SearchByName() : Container()
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildOptions({
    required int index,
  }) {
    return AnimatedContainer(
      width: screenWidth(context) * 0.49,
      // height: 50,
      margin: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.004),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.transparent,
      ),
      duration: const Duration(milliseconds: 200),
      child: InkWell(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Container(
            width: 200,
            height: screenHeight(context) * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),

              color: currentIndex == index
                  ? const Color(0xff34593B).withOpacity(0.9)
                  : const Color(0xff34593B).withOpacity(0.2),
              // borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
                child: Text(
              titles[index],
              style: headingStyle.copyWith(
                  fontSize: 14,
                  color: currentIndex == index ? Colors.white : textColo2,
                  fontWeight: FontWeight.w500),
            )),
          )),
    );
  }
}
