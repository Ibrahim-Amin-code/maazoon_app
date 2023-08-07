import 'package:flutter/material.dart';
import 'package:maazoon_app/core/widgets/custom_text_field.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget(
      {super.key,
      required this.controller,
      required this.filterOnTap,
      required this.searchOnTap});
  final TextEditingController? controller;
  final void Function()? filterOnTap;
  final void Function()? searchOnTap;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.07,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: screenWidth(context) * 0.45,
            child: CustomTextFormField(
              controller: widget.controller,
              hint: "اسم المأذون",
              borderSideColor: Colors.transparent,
              borderSideColor2: Colors.transparent,
            ),
          ),
          Image.asset('asset/images/Rectangle 40140.png'),
          const SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: widget.filterOnTap,
            child: Row(
              children: [
                Text(
                  'التصفية',
                  style: headingStyle.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Image.asset('asset/images/Filter.png'),
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: widget.searchOnTap,
            child: Container(
              width: screenWidth(context) * 0.2,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text('ابحث',
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
