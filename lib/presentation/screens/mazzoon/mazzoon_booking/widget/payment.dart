import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';

import '../../../../../generator/locale_keys.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  int? timeSelected;
  int? radioValue;

  List<String> payments = [
    LocaleKeys.visa.tr(),
    LocaleKeys.master.tr(),
    LocaleKeys.apple_pay.tr(),
    LocaleKeys.stc.tr()
  ];
  List<String> paymentsIcons = [
    'asset/images/Visa.png',
    'asset/images/Master Card.png',
    'asset/images/Apple pay.png',
    'asset/images/STC Pay.png'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: List.generate(
        payments.length,
        (index) => InkWell(
          onTap: () {
            setState(() {
              timeSelected = index;
            });
          },
          child: Row(
            children: [
              Radio<int>(
                  activeColor: Colorblack,
                  value: index,
                  groupValue: radioValue,
                  onChanged: (int? val) {
                    setState(() {
                      radioValue = val!;
                    });
                  }),
              const SizedBox(
                width: 10,
              ),
              Image.asset(paymentsIcons[index]),
              const SizedBox(
                width: 10,
              ),
              Text(
                payments[index],
                style: headingStyle.copyWith(
                    color: textColo2,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PayWallect extends StatefulWidget {
  const PayWallect({super.key});

  @override
  State<PayWallect> createState() => _PayWallectState();
}

class _PayWallectState extends State<PayWallect> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              checked = !checked;
            });
          },
          child: (checked != true)
              ? Image.asset(
                  'asset/images/Vector12.png',
                )
              : Image.asset(
                  'asset/images/Check Square.png',
                ),
        ),
        const SizedBox(
          width: 15,
        ),
        Image.asset(
          'asset/images/Wallet2.png',
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "دفع 50 ر.س متبقى لديك 400 ر.س",
          style: headingStyle.copyWith(
              color: textColo2, fontWeight: FontWeight.w400, fontSize: 13),
        ),
      ],
    );
  }
}
