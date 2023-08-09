import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/splash/splash.dart';

class MapSearchItem extends StatefulWidget {
  const MapSearchItem({super.key});

  @override
  State<MapSearchItem> createState() => _MapSearchItemState();
}

class _MapSearchItemState extends State<MapSearchItem> {
  @override
  Widget build(BuildContext context) {
    return (SplashScreen.startLatitude == null &&
            SplashScreen.startLongitude == null)
        ? Center(
            child: CircularProgressIndicator(
              color: MazzoonColor,
            ),
          )
        : SizedBox(
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
          );
  }
}
