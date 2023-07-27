// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print, depend_on_referenced_packages

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/space_widget.dart';
import 'colors.dart';

const kLogo = 'asset/images/logo.png';
const kHomeLayout = '/';
TextStyle headingStyle = TextStyle(
  fontFamily: "Cairo", //'(A) Arslan Wessam A (A) Arslan Wessam A'
  fontSize: 16,
  color: colordeepGrey,
);

//////////////////////////////////////////////////

Widget logoImage() {
  return Center(
    child: Image.asset(kLogo),
  );
}
//////////////////////////////////////////////////

appbarNoTitle() {
  return AppBar(
    toolbarHeight: 0.0,
    elevation: 0.0,
  );
}

/////////////////////////////////////////////////

late SharedPreferences prefs;

Future startShared() async {
  prefs = await SharedPreferences.getInstance();
}

//////////////////////////////////////////////////////////
String translateString(String english, String arabic) {
  return prefs.getString("lang") == 'ar' ? arabic : english;
}

////////////////////////////////////////////////////////////

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

///////////////////////////////////////////////////////////

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

///////////////////////////////////////////////////////////
customAppbar({
  required String title,
  required context,
  required bool atHome,
}) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.white,
    centerTitle: true,
    automaticallyImplyLeading: false,
    iconTheme: IconThemeData(color: Colorblack),
    title: Center(
      child: Text(
        title,
        style: headingStyle.copyWith(
            color: mal3abColor,
            fontWeight: FontWeight.w700,
            fontSize: MediaQuery.of(context).size.width * 0.055),
      ),
    ),
    leading: (!atHome)
        ? Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 25,
              ),
            ),
          )
        : null,
  );
}

//////////////////////////////////////////////////////////////////////
customCachedNetworkImage({required String url, required context, BoxFit? fit}) {
  try {
    // ignore: unnecessary_null_comparison
    if (url == null || url == "") {
      return const Icon(
        Icons.error,
        color: Colors.white,
      );
    } else {
      return Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width,
        child: (Uri.parse(url).isAbsolute)
            ? CachedNetworkImage(
                imageUrl: url,
                fit: fit,
                placeholder: (context, url) => Icon(
                      Icons.error,
                      color: colorGrey,
                    ),
                errorWidget: (context, url, error) {
                  return const Icon(
                    Icons.error,
                    color: Colors.white,
                  );
                })
            : Image.asset(
                "asset/icons/app_logo.png",
                width: screenWidth(context) * 0.2,
                fit: BoxFit.contain,
              ),
      );
    }
  } catch (e) {
    print(e.toString());
  }
}

///////////////////////////////////////////////////////////////////

Widget loading(Color color) {
  return Center(
    child: CircularProgressIndicator(
      color: color,
    ),
  );
}

///////////////////////////////////////////////////////////////////
void dialog(context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Opacity(
        opacity: 0.8,
        child: Container(
          width: screenWidth(context),
          height: screenHeight(context),
          color: Colors.black12,
          child: Center(
            child: CircularProgressIndicator(
              color: mal3abColor,
            ),
          ),
        ),
      );
    },
  );
}

void dialogMsg(context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          children: [
            Text(
              'Challenge Done',
              textAlign: TextAlign.center,
              style: headingStyle.copyWith(
                  color: mal3abColor,
                  fontSize: 14,
                  // height: 2,
                  fontWeight: FontWeight.w700),
            ),
            const VerticalSpace(value: 1),
            Icon(
              Icons.check_circle_outline,
              color: mal3abColor,
              size: 25,
            )
          ],
        ),
        content: Text(
          'Thank you for creating the challenge! Please note that the challenge will not be confirmed unless it is accepted by another user. If any other user creates a challenge at the same time and it is accepted Or Reservation, your challenge will be canceled.',
          textAlign: TextAlign.start,
          style: headingStyle.copyWith(
              color: textColor,
              fontSize: 12,
              height: 2,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Center(
            child: CustomGeneralButton(
                height: screenHeight(context) * 0.04,
                width: screenWidth(context) * 0.4,
                textColor: Colors.white,
                color: mal3abColor,
                text: 'Ok',
                onTap: () => Navigator.pop(context)),
          ),
          const VerticalSpace(value: 1),
        ],
      );
    },
  );
}

// String parseHtmlString(String htmlString) {
//   final document = parse(htmlString);
//   final String parsedString = parse(document.body!.text).documentElement!.text;
//   return parsedString;
// }

///////////////////////////////////////////////////////////////////////////////////

homeBottomSheet({required BuildContext context, required Widget child}) {
  var w = MediaQuery.of(context).size.width;
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(w * 0.07),
          topLeft: Radius.circular(w * 0.07)),
    ),
    isDismissible: true,
    isScrollControlled: true,
    context: context,
    builder: (context) => child,
  );
}
