// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/helper/validation.dart';
import 'package:maazoon_app/core/widgets/custom_drop_down.dart';
import 'package:maazoon_app/core/widgets/custom_text_field.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/splash/splash.dart';

import '../../../../generator/locale_keys.dart';

class SelectPlaceWidget extends StatelessWidget {
  SelectPlaceWidget({super.key});

  TextEditingController address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const VerticalSpace(value: 2),
        Text(
          translateString("Choose wedding place", "اختر مكان عقد القران"), //
          style: headingStyle.copyWith(
            fontSize: screenWidth(context) * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        const VerticalSpace(value: 2),
        CustomDropDown(
          text: LocaleKeys.conutry.tr(),
          items: const [],
        ),
        const VerticalSpace(value: 2),
        CustomDropDown(
          text: LocaleKeys.city.tr(),
          items: const [],
        ),
        const VerticalSpace(value: 2),
        CustomDropDown(
          text: LocaleKeys.street.tr(),
          items: const [],
        ),
        const VerticalSpace(value: 2),
        CustomTextFormField(
          hint: LocaleKeys.address.tr(),
          readOnly: true,
          controller: address,
          inputType: TextInputType.streetAddress,
          suffix: Image.asset("asset/images/Icon.png"),
          validator: (value) => validate(value!),
        ),
        const VerticalSpace(value: 2),
        SizedBox(
          width: double.infinity,
          height: screenHeight(context) * 0.4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(screenWidth(context) * 0.03),
            child: Container(
              color: kMainColor.withOpacity(0.2),
              child: (SplashScreen.startLatitude == null &&
                      SplashScreen.startLongitude == null)
                  ? Center(
                      child: CircularProgressIndicator(
                        color: kMainColor,
                      ),
                    )
                  : GoogleMap(
                      myLocationButtonEnabled: false,
                      myLocationEnabled: true,
                      zoomControlsEnabled: false,
                      zoomGesturesEnabled: false,
                      onMapCreated: (controller) {
                        controller = controller;
                      },
                      initialCameraPosition: CameraPosition(
                          target: LatLng(SplashScreen.startLatitude!,
                              SplashScreen.startLongitude!),
                          zoom: 18),
                      onCameraIdle: () async {},
                      markers: <Marker>{
                        Marker(
                          draggable: true,
                          markerId: const MarkerId('Marker'),
                          position: LatLng(
                            SplashScreen.startLatitude!,
                            SplashScreen.startLongitude!,
                          ),
                          icon: BitmapDescriptor.defaultMarker,
                        )
                      },
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
