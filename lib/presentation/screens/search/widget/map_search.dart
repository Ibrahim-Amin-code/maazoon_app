import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/custom_text_field.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/splash/splash.dart';

import '../../../../generator/locale_keys.dart';

class MapSearchItem extends StatefulWidget {
  const MapSearchItem({super.key});

  @override
  State<MapSearchItem> createState() => _MapSearchItemState();
}

class _MapSearchItemState extends State<MapSearchItem> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (SplashScreen.startLatitude == null &&
            SplashScreen.startLongitude == null)
        ? Padding(
            padding:
                EdgeInsets.symmetric(vertical: screenHeight(context) * 0.02),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth(context) * 0.04),
                    child: searchMapButton()),
                const VerticalSpace(value: 5),
                loading(MazzoonColor),
              ],
            ),
          )
        : Column(
            children: [
              const VerticalSpace(value: 2),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth(context) * 0.04),
                  child: searchMapButton()),
              SizedBox(
                width: double.infinity,
                height: screenHeight(context),
                child: GoogleMap(
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
            ],
          );
  }

  Widget searchMapButton() => CustomTextFormField(
        label: LocaleKeys.search.tr(),
        controller: search,
        suffix: Container(
          height: screenHeight(context) * 0.065,
          width: screenWidth(context) * 0.2,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(LocaleKeys.search.tr(),
                style: headingStyle.copyWith(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
          ),
        ),
      );
}
