import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/presentation/screens/search/widget/search_body.dart';

import '../../../core/constants/constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MazzoonColor,
        appBar: customAppbar(title: "البحث", context: context),
        body: const SearchBody(index: 0,));
  }
}
