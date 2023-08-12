import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/presentation/screens/search/widget/search_body.dart';

import '../../../core/constants/constants.dart';
import '../../../generator/locale_keys.dart';

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
        appBar: customAppbar(title: LocaleKeys.search.tr(), context: context),
        body: const SearchBody());
  }
}
